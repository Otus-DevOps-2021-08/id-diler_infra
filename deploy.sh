#!/bin/bash

cd /home/yc-user || echo "System abort, no found a folder /home/yc-user" && exit
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
