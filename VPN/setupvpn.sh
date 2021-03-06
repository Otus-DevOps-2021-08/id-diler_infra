#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
echo "deb http://repo.pritunl.com/stable/apt focal main" | sudo tee /etc/apt/sources.list.d/pritunl.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get install -y mongodb-org pritunl
sudo systemctl start mongod pritunl
sudo systemctl enable mongod pritunl
#sudo apt-get install -y iptables
#sudo iptables -A INPUT -p tcp -m tcp --sport 443 --dport 1025:65355 -j ACCEPT
#sudo iptables -A INPUT -p udp -m udp --sport 443 --dport 1025:65355 -j ACCEPT
