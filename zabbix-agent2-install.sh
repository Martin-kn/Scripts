#!/bin/bash

#Install Zabbix agent2
sudo apt install zabbix-agent2

#Enable service
sudo systemctl enable zabbix-agent2.service

# Define the file path
FILE="/etc/zabbix/zabbix_agent2.conf"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
  echo "File not found: $FILE"
  exit 1
fi

# Replace the default IP with our Zabbix server
sudo sed -i 's/Server=127.0.0.1/Server=10.10.1.61/g' "$FILE"
sudo sed -i 's/ServerActive=127.0.0.1/ServerActive=10.10.1.61/g' "$FILE"

echo "Changes completed successfully."



sudo systemctl restart zabbix-agent2.service
