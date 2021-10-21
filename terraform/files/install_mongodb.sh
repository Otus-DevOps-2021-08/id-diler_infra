#!/bin/bash
set -e

sleep 20
sudo apt-get update

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - # После пайпа sudo не убрано - а то не отработает добавление ключа
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt-get update
sudo apt-get install -y apt-transport-https mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
