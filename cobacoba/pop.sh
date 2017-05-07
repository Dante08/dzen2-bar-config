#!/bin/bash
sleep 1;
r_arr='/usr/share/dzen2/bitmaps/music.xbm';
while true; do
echo "^fg(#ffffff)^i(${r_arr})^fg()^ca(1, /home/dante/cobacoba/./lower.sh)^fn(FontAwesome:size=10)^fn() $(printf "now playing")^ca()\
"; sleep 1; done | dzen2 -geometry 110x28 -x 1090 -y 768 \
-fn '-*-dejavu sans with icons-normal-r-normal--*-100-60-*-p-0-utf8-1' \
-bg '#333333' -fg '#ffffff'

