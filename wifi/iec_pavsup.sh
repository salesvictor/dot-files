#!/bin/bash
killall wpa_supplicant
ip link set wlp1s0 down
ip link set wlp1s0 up
wpa_supplicant -B -i wlp1s0 -c<(wpa_passphrase 'IEC_PAVSUP04' 'wifiI&Cp@vSup2016')
dhcpcd start wlp1s0
