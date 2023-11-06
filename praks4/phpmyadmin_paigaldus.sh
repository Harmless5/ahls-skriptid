#!/bin/bash
# Skript, mis installeerib phpmyadmini ja vajalikud lisad
# Kontrollime, kas phpmyadmin on installeeritud
PHPMYADMIN=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
# Kui PHPMYADMIN muutuja väärtus võrdub 0-ga
if [ $PHPMYADMIN -eq 0 ]; then
    # Installitakse phpmyadmin
    echo "Paigaldame phpmyadmin ja vajalikud lisad"
    apt install phpmyadmin
    echo "phpmyadmin on paigaldatud"
    # Lisame võimaluse kasutada phpmyadmin käsk ilma kasutaja ja parooli lisamiseta
    touch $HOME/.my.cnf # Lisame kasutaja kodukausta faili .my.cnf
    echo "[client]" >> $HOME/.my.cnf
    echo "host = localhost" >> $HOME/.my.cnf
    echo "user = root" >> $HOME/.my.cnf
    echo "password = qwerty" >> $HOME/.my.cnf
elif [ $PHPMYADMIN -eq 1 ]; then
    echo "phpmyadmin on juba paigaldatud"
    phpmyadmin
fi