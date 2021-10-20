#!/bin/bash
set -e

apt-get update
sleep 20
apt-get install -y git

echo "Check Git"
git --version
