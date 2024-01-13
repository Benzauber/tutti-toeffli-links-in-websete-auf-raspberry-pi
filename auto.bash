#!/bin/bash  
  
# Benutzername ermitteln  
USERNAME=$(whoami)  
  
# Inhalt des Crontab-Eintrags für 14:20 Uhr  
CRON_ENTRY="0 0 * * * /usr/bin/python3 $HOME/link.py"  
  
# (Optional) Crontab-Befehl sichern  
(crontab -l ; echo "$CRON_ENTRY") | crontab -  
  
# Optional: Crontab-Dienst neu starten  
sudo service cron restart
