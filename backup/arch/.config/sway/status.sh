 #!/bin/bash

date_formatted=$(date +'%Y-%m-%d %I:%M:%S %p')

bat_capacity=$(cat /sys/class/power_supply/macsmc-battery/capacity)
bat_status=$(cat /sys/class/power_supply/macsmc-battery/status)

battery_info="$bat_status $bat_capacity %"

echo "$battery_info | $date_formatted"
