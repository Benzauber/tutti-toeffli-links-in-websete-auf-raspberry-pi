import requests  
from bs4 import BeautifulSoup  
from urllib.parse import urljoin  
  
# URL der Webseite, die du durchsuchen möchtest  
url = 'https://www.tutti.ch/de/q/suche/Ak6d0w7ZmZmxpwJTAwJGUpXByaWNlws0CvMDA?sorting=newest&page=1&query=t%C3%B6ffli'  
  
# Anforderung an die Webseite senden  
response = requests.get(url)  
  
if response.status_code == 200:  
   soup = BeautifulSoup(response.text, 'html.parser')  
      
   links = soup.find_all('a')  
  
   with open('/var/www/html/links.txt', 'w') as file:  
       for link in links:  
           href = link.get('href')  
           if href is not None:  
               full_url = urljoin(url, href)  
               file.write(full_url + '\n')  
        # Hauptdatei (zum Beispiel hauptdatei.py)
        with open("delete.py", "r") as f:
            code = f.read()
            exec(code)

  
  
   print('Links wurden erfolgreich in links.txt gespeichert.')  
else:  
   print('Fehler beim Abrufen der Webseite. Statuscode:', response.status_code)

