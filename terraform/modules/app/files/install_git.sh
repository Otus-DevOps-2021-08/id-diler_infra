#!/bin/bash
set -e

sudo apt-get update
sleep 20
sudo apt-get install -y git

echo "Check Git"
git --version
