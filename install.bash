#!/bin/bash

echo "Wird installiert"
sudo apt-get update
sudo apt-get install python3-pip
python3 -m venv myenv
source myenv/bin/activate
pip install beautifulsoup4
pip install requests

echo "Webseite wird eingerichtet"
sudo apt-get install apache2
sudo chmod a+w /var/www/html/

sudo rm /var/www/html/index.html
echo "/var/www/html/index.html wurde gelöscht"
sudo cp index.html /var/www/html/
echo "index.html wurde nach /var/www/html/ kopiert"

bash auto.bash
