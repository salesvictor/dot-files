#!/bin/bash
killall wpa_supplicant
dhcpcd -k
sleep 1
ip link set wlp1s0 up
iw dev wlp1s0 disconnect
sleep 1
iw dev wlp1s0 connect 'WiFi CenterVale Shopping'
sleep 1
dhcpcd start wlp1s0 
