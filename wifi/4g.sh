#!/bin/bash
killall wpa_supplicant
ip link set wlp1s0 up
wpa_supplicant -B -i wlp1s0 -c<(wpa_passphrase 'Tomato tomahto' 'Hot Wheels')
dhcpcd start wlp1s0
