#!/bin/bash
set -e

sudo apt-get update
sleep 20
sudo apt-get install -y ruby-full ruby-bundler build-essential

echo "Check Ruby and Bundler"
ruby -v
bundler -v
