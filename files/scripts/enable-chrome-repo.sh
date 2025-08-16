#!/bin/bash

set -oue pipefail 

echo "Fixing google-chrome yum repo"
sed -i '/enabled/d' /etc/yum.repos.d/google-chrome.repo 
echo "enabled=1" >> /etc/yum.repos.d/google-chrome.repo

echo "Downloading Google Signing Key"
curl https://dl.google.com/linux/linux_signing_key.pub > /tmp/linux_signing_key.pub

rpm --import /tmp/linux_signing_key.pub