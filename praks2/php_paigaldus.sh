#!/bin/bash
# Skript, mis kontrollib, kas php veebiserver on installeeritud. Kui ei ole, siis installib selle.

# Vajalikud paketid 
SERVICE_NAME="php7.0 libapache2-mod-php7.0 php7.0-mysql"

# Kontrollime, kas teenus on installeeritud
if ! dpkg -s $SERVICE_NAME >/dev/null 2>&1; then
    # Installime teenuse
    sudo apt-get update
    sudo apt-get install -y $SERVICE_NAME
    # Installeerimine vahalikud paketid
    echo "$SERVICE_NAME installeeritud"
else
    # Näitame teenuse olekut
    sudo systemctl status $SERVICE_NAME
fi
