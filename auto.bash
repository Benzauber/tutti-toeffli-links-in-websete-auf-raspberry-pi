#!/bin/bash

while true; do
  echo "Möchten Sie die Automation starten? (Y/n)"
  read -r input

  if [ -z "$input" ] || [ "$input" == "Y" ] || [ "$input" == "y" ]; then
    echo "start.bash wird ausgefürt"
    echo "Um es zu stoppen 'bash stop.bash'"
    bash start.bash
    # Hier können Sie den Code für den Fall einfügen, dass die Antwort Ja oder Enter ist.
    break  # Beende die Schleife, da eine gültige Eingabe erfolgt ist.
  elif [ "$input" == "N" ] || [ "$input" == "n" ]; then
    echo "Nicht ausgefürt!"
    echo "Um es auszuführen 'bash start.bash'"
    # Hier können Sie den Code für den Fall einfügen, dass die Antwort Nein ist.
    break  # Beende die Schleife, da eine gültige Eingabe erfolgt ist.
  else
    echo "Ungültige Eingabe. Bitte verwenden Sie Y oder N."
    # Hier können Sie den Code für den Fall einfügen, dass die Eingabe ungültig ist.
  fi
done

