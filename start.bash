#!/bin/bash

# start.bash

# Speichern der Prozess-ID in einer Datei
nohup bash -c 'while true; do python link.py; sleep 60; done' > output.log 2>&1 &
echo $! > process.pid
