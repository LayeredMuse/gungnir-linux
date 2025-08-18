#!/bin/bash

set -oue pipefail 

curl -O https://raw.githubusercontent.com/OpenActionAPI/rust-elgato-streamdeck/main/40-streamdeck.rules
cp 40-streamdeck.rules /etc/udev/rules.d/
udevadm control --reload-rules && udevadm trigger
rm 40-streamdeck.rules