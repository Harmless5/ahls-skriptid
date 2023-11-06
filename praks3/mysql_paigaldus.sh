#!/bin/bash
# Skript, mis kontrollib, kas apache2 on installeeritud. Kui ei ole, siis installib selle.

MYSQL=$(dpkg-query -W -f='${Status}' mysql-server 2>/dev/null | grep -c 'ok installed')
# Kui MYSQL muutuja väärtus võrdub 0-ga
if [ $MYSQL -eq 0 ]; then
    # Installitakse mysql-server
    echo "Paigaldame mysql ja vajalikud lisad"
    apt install mysql-server
    echo "mysql on paigaldatud"
    # Lisame võimaluse kasutada mysql käsk ilma kasutaja ja parooli lisamiseta
    touch $HOME/.my.cnf # Lisame kasutaja kodukausta faili .my.cnf
    echo "[client]" >> $HOME/.my.cnf
    echo "host = localhost" >> $HOME/.my.cnf
    echo "user = root" >> $HOME/.my.cnf
    echo "password = qwerty" >> $HOME/.my.cnf
elif [ $MYSQL -eq 1 ]; then
    echo "mysql-server on juba paigaldatud"
    mysql
fi