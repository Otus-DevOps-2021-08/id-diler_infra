#!/bin/bash

yc compute instance create \
--name reddit-full \
--platform standard-v2 \
--cores=2 \
--core-fraction=5 \
--memory 1 \
--create-boot-disk size=10GB,image-id=fd8oh1f17250c47ckncf \
--zone ru-central1-a \
--ssh-key ~/.ssh/yc-otus-appuser.pub \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--service-account-name packer-base
