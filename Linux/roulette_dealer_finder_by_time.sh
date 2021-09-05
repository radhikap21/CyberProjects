#!/bin/bash
echo " Please entre date in four digits {mm dd}"
read  Date
echo "Please entre time"
read Time
echo "Please enter AM or PM"
read AMPM
echo " date and time are  $Date $Time $AMPM"
grep $Time" "$AMPM $Date"_Dealer_schedule" | awk '{print $1,  $2 , $5,  $6}'
