#!/bin/bash
killall wpa_supplicant
ip link set wlp1s0 up
wpa_supplicant -B -i wlp1s0 -c<(wpa_passphrase 'RedeCASD-205' 'borarede')
dhcpcd start wlp1s0
