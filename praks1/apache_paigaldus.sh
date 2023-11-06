#!/bin/bash
# Skript, mis kontrollib, kas apache2 on installeeritud. Kui ei ole, siis installib selle.

# Teenuse nimi
SERVICE_NAME="apache2"

# Kontrollime, kas teenus on installeeritud
if ! dpkg -s $SERVICE_NAME >/dev/null 2>&1; then
    # Installime teenuse
    sudo apt-get update
    sudo apt-get install -y $SERVICE_NAME
    echo "$SERVICE_NAME installed successfully"
else
    # Näitame teenuse olekut
    sudo systemctl status $SERVICE_NAME
fi
