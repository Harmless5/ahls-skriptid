#!/bin/bash
# Skript, mis installeerib wordpressi ja vajalikud lisad
# Kontrollime, kas wordpress on installeeritud
WORDPRESS=$(dpkg-query -W -f='${Status}' wordpress 2>/dev/null | grep -c 'ok installed')
# Kui WORDPRESS muutuja väärtus võrdub 0-ga
if [ $WORDPRESS -eq 0 ]; then
    # Installitakse wordpress
    echo "Paigaldame wordpressi ja vajalikud lisad"
    apt install wordpress
    echo "wordpress on paigaldatud"
    # Lisame võimaluse kasutada wordpress käsk ilma kasutaja ja parooli lisamiseta
    touch $HOME/.my.cnf # Lisame kasutaja kodukausta faili .my.cnf
    echo "[client]" >> $HOME/.my.cnf
    echo "host = localhost" >> $HOME/.my.cnf
    echo "user = root" >> $HOME/.my.cnf
    echo "password = qwerty" >> $HOME/.my.cnf
elif [ $WORDPRESS -eq 1 ]; then
    echo "wordpress on juba paigaldatud"
    wordpress
fi