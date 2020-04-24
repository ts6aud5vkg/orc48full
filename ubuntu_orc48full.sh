#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf orc48full.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/orc48full/master/orc48full.sh
chmod 777 orc48full.sh
./orc48full.sh
