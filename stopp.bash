#!/bin/bash

# stopp.bash

if [ -f "process.pid" ]; then
    pid=$(cat process.pid)
    # Beenden des Prozesses mit der gespeicherten PID
    kill -9 "$pid"
    echo "Prozess mit der PID $pid wurde beendet."
    # Löschen der PID-Datei
    rm process.pid
else
    echo "Die PID-Datei existiert nicht. Der Prozess wurde möglicherweise bereits beendet."
fi
