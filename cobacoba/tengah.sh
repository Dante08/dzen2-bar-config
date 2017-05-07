#!/bin/bash
sleep 1;
while true; do
echo "  ^fg(#ffffff)$(printf ${calendar})^fg()^ca(1, /home/dante/cobacoba/./time-date.sh)^fn(FontAwesome:size=10)^fn() $(date +%a\ %d/%m/%y)^ca()\
 ^fg(#ffffff)$(date +%H:%M)^fg()\
"; sleep 1; done | dzen2 -geometry 370x28 -x 1200 -y 768 \
-fn '-*-dejavu sans with icons-normal-r-normal--*-100-60-*-p-0-utf8-1' \
-bg '#333333' -fg '#ffffff'
