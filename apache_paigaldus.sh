#!/bin/bash

# Define the service name
SERVICE_NAME="apache2"

# Check if the service is installed
if ! dpkg -s $SERVICE_NAME >/dev/null 2>&1; then
    # Install the service if it's not installed
    sudo apt-get update
    sudo apt-get install -y $SERVICE_NAME
    echo "$SERVICE_NAME installed successfully"
else
    # Display the status of the service if it's already installed
    sudo systemctl status $SERVICE_NAME
fi
