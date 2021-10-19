#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - # После пайпа sudo не убрано - а то не отработает добавление ключа
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt-get update && sudo apt-get install -y apt-transport-https mongodb-org
systemctl start mongod
systemctl enable mongod
