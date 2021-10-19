#!/bin/bash

yc compute instance create \
--name reddit-full \
--memory=2 \
--create-boot-disk size=10GB,image-id=fd8amb9jgq7ih6jibpsa \
--zone ru-central1-a \
--ssh-key ~/.ssh/yc-otus-appuser.pub \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4
