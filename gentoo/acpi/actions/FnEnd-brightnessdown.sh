#!/bin/bash 

Percent=20 
MinVal=0 

read -r MaxVal < "/sys/class/backlight/intel_backlight/max_brightness" 
read -r CurrVal < "/sys/class/backlight/intel_backlight/brightness"

DecVal=$(($MaxVal * $Percent / 100)) 
NewVal=$(($CurrVal - $DecVal)); 


echo -n $NewVal > /sys/class/backlight/intel_backlight/brightness 

logger "[ACPI] brightnessdown |$CurrVal| |$NewVal| |$DecVal|"
