start:
	cd ./binlog-dump && go build -o ./built/binlogdump
	chmod +x ./binlog-dump/built/binlogdump
	./binlog-dump/built/binlogdump