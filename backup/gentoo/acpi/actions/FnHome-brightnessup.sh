#!/bin/bash 

Percent=20 

read -r MaxVal < "/sys/class/backlight/intel_backlight/max_brightness"

read -r CurrVal < "/sys/class/backlight/intel_backlight/brightness"

IncVal=$(($MaxVal * $Percent / 100))
NewVal=$(($CurrVal + $IncVal))



echo -n $NewVal > /sys/class/backlight/intel_backlight/brightness 

logger "[ACPI] brightnessup |$CurrVal| |$NewVal| |$IncVal|"
