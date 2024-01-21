# Datei einlesen
with open('/var/www/html/links.txt', 'r') as file:
    lines = file.readlines()

# Erste 5 und letzten 30 löschen
cleaned_lines = lines[5:-41]

# Zweite Links löschen
cleaned_lines = [line for i, line in enumerate(cleaned_lines) if i % 2 != 0]

# Inhalt in die gleiche Datei schreiben
with open('/var/www/html/links.txt', 'w') as file:
    file.writelines(cleaned_lines)


