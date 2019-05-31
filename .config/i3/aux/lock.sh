#!/bin/bash
tmp="/tmp/screen.png"
scrot $tmp
corrupter $tmp $tmp
i3lock -uei $tmp
