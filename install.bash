#!/bin/bash

echo "Wird installiert"
apt-get update
apt-get install python3-pip
python3 -m venv myenv
source myenv/bin/activate
pip install beautifulsoup4
pip install requests

echo "Webseite wird eingerichtet"
apt-get install apache2
chmod a+w /var/www/html/

rm /var/www/html/index.html
echo "/var/www/html/index.html wurde gelöscht"
cp index.html /var/www/html/
echo "index.html wurde nach /var/www/html/ kopiert"

bash auto.bash
