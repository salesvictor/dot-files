#!/bin/bash
killall wpa_supplicant
ip link set wlp1s0 up
wpa_supplicant -B -i wlp1s0 -c<(wpa_passphrase 'Rede_IEC_ADM' '@c&ss05emFi0C0mpI&c')
dhcpcd start wlp1s0
