#!/bin/sh

# A simple 18x18 px battery monitor, that when hovered over, will provide much
# more detail.

# Notably, the detail is whether or not the battery is connected (first line),
# and the output of `acpi`s time estimate.

FN='"xft:Liberation Mono:size=7"' # font
ICON_PATH="$HOME/.data/icons/dzen"

battery=0 # how full the battery is
while true; do
    acpi=$(acpi -b)
    battery=$(echo $acpi | sed 's#.* \([0-9][0-9]\?\)%,.*#\1#')
    info=$(echo $acpi | awk '{print $5, $6, $7}')

    echo $battery | dzen2-gdbar -s o -h 9 -w 16 -nonl
    # This is just a lil' box at the end, to make the previous bar look more
    # like a battery (e.g. the positive end of the battery)
    echo "^pa(16;7)^r(2x3)"

    status=`acpi -a | cut -d, -f2`;
    if [ "$status" = " on-line" ] ; then
        echo "^i(${ICON_PATH}/ac_01.xbm) Battery charging"
    else
        echo "^i(${ICON_PATH}/battery.xbm) Battery discharging"
    fi
    echo $info

    # echo $acpi | cut -d':' -f 2-

    sleep 10 # updating every 10 seconds
d
done | dzen2 -l 2 -h 18 -w 200 -tw 18 -ta l -x 1318 -fn "$FN"




