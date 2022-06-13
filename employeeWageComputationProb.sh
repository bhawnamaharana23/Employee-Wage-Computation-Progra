#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

absent=0
daysPerMonth=20

echo "Check Employee is Present or Absent"
uc1=$((RANDOM%30+10))
if [ $uc1 -eq $absent ]
then
	echo "Employee is Absent."
else
	echo "Employee is Present."
fi

echo "Check Employee Daily wage"
read -p "Enter the wages per hour :" wagePerHour
read -p "Enter the full day per Hour :" fullDayPerHour
uc2=$(($fullDayPerHour*$wagePerHour))
echo "Daily Employee Wage is $uc2."

echo "Calculate Part time Employee wage"
read -p "Enter the part time hours :" partTime
uc3=$(($partTime*$wagePerHour))
echo "Part time Emplopyee wage is $uc3."

echo "Selection the operation"
read -p "Enter the number :" uc4
case $uc4 in
	1)
		echo "Is Employee absent or not?"
		if [ $uc1 -eq $absent ]
		then
        		echo "Employee is Absent."
		else
        		echo "Employee is Present."
		fi
	;;
	2)
		echo "Daily Employee wage is $uc2"
	;;
	3)
		echo "Part time Employee wage is $uc3"
	;;
	*)
		echo "Error"
	;;
	esac

echo "Calculate the Employee wages per Month"
read -p "Enter the days of month :" daysPerMonth
uc5=$(($uc2*$daysPerMonth))
echo "Employee wage of month is $uc5."

a=`$((($fullDayPerHour*24)+$daysPerMonth))
uc6=$(($a*$uc2))
echo "Calculate Wages till a condition of total working hours or days is reached for a month"
if [ $fullDayPerHour == 100 ] && [ $daysPerMonth == 20 ]
then
	echo "Wage is $uc6"
else
	echo "Wage is $uc5"
fi
