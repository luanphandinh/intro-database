#!/bin/bash

function set() {
  echo "$1,$2" >> db.txt
}

function get() {
  grep "$1" db.txt | tail -n1 | cut -d ',' -f2
}

"$@"
