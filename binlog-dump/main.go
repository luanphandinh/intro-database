package main

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/go-mysql-org/go-mysql/canal"
	"github.com/go-mysql-org/go-mysql/schema"
)

type DatabaseEventHander struct {
	canal.DummyEventHandler
}

func parseRow(raw []any, cols []schema.TableColumn) (map[string]interface{}, error) {
	if len(raw) != len(cols) {
		return nil, fmt.Errorf("unexpected error, raw data size and cols size should match")
	}

	data := make(map[string]interface{}, 0)
	for i := range raw {
		data[cols[i].Name] = raw[i]
	}

	return data, nil
}

func (h *DatabaseEventHander) OnRow(e *canal.RowsEvent) error {
	var (
		oldRow, newRow map[string]any
		err            error
	)

	if len(e.Rows) <= 0 {
		return fmt.Errorf("unexpected len of rows, should have more than 0 row")
	}

	switch e.Action {
	case canal.InsertAction:
		newRow, err = parseRow(e.Rows[0], e.Table.Columns)
	case canal.DeleteAction:
		oldRow, err = parseRow(e.Rows[0], e.Table.Columns)
	case canal.UpdateAction:
		oldRow, err = parseRow(e.Rows[0], e.Table.Columns)
		newRow, err = parseRow(e.Rows[1], e.Table.Columns)
	default:
		return fmt.Errorf("unknown action received")
	}

	jsonData, err := json.MarshalIndent(map[string]any{
		"old": oldRow,
		"new": newRow,
	}, "", "\t")

	if err != nil {
		return err
	}

	// This demo only focus on print out the result
	// We can process the information and send it to other middlewares
	// Such as cache(redis, memcache) or message queue (kafka, rabbitmq), etc...
	log.Default().Printf("%s %s\n", e.Action, jsonData)
	return nil
}

func (h *DatabaseEventHander) String() string {
	return "MyEventHandler"
}

func main() {
	cfg := canal.NewDefaultConfig()
	// For demo only, very bad code practice
	// In real live all of these configs should be either getting from config service or env variables
	cfg.Addr = "127.0.0.1:3306"
	cfg.User = "root"
	cfg.Password = "root"
	cfg.Dump.TableDB = "school"
	cfg.Dump.Tables = []string{"person"}

	c, err := canal.NewCanal(cfg)
	if err != nil {
		log.Fatal(err)
	}

	// Register a handler to handle RowsEvent
	c.SetEventHandler(&DatabaseEventHander{})

	// Start canal
	c.Run()
}
