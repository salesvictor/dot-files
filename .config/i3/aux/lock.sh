#!/bin/bash
scrot /tmp/screen.png
magick /tmp/screen.png  -scale 10% -scale 1000% /tmp/screen.png
#magick /tmp/screen.png -paint 3 /tmp/screen.png
i3lock -uei /tmp/screen.png
