#!/bin/bash

set -oue pipefail 

echo "Downloading Microsoft Signing Key"
rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo "Adding VSCode repo"
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo > /dev/null