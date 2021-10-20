#!/bin/bash
set -e

apt-get update
sleep 20
apt-get install -y ruby-full ruby-bundler build-essential

echo "Check Ruby and Bundler"
ruby -v
bundler -v
