#!/bin/bash
set -e

# пользователь от которого устанавливаем/ запускаем
echo "ADD user"
useradd -m -u 10000 -d /opt/reddit-full reddit-full

echo "GIT clone"
cd /opt/reddit-full
sudo -u reddit-full git clone -b monolith https://github.com/express42/reddit.git
#cd /opt
#git clone -b monolith https://github.com/express42/reddit.git

echo "BUNDLE install"
cd reddit/
#sudo bundle install --path vendor/bundle
sudo -u reddit-full bundle install --path vendor/bundle


# проверим, что есть папка, если нет то set -e остановит
echo "CHECK tmp + move config"
ls /tmp/*
mv /tmp/puma.service /etc/systemd/system/puma.service

# перезапустить демоны и поставить на автозагрузку пуму
echo "DEMON reload"
sudo systemctl daemon-reload
echo "PUMA add enable"
sudo systemctl enable puma
echo "puma reload"
sudo systemctl start puma

#echo "CHECK Puma service"
#systemctl status puma
