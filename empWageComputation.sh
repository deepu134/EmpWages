#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
read -p "ENTER THE NUMBER OF EMPLOY" NUM
ISFULLTIME=1
WAGES_PER_HOUR=20
DAILY_EMPLOY_WAGES=0
for (( i=1;i<=$NUM;i++ ))
do
	ATTEND=$((RANDOM%2))
	if [ $ATTEND -eq 1 ]
	then
		DAILY_EMPLOY_WAGES=$((WAGES_PER_HOUR*8))
		echo "WAGES OF EMPLOY $i:$DAILY_EMPLOY_WAGES"
	else
		echo "EMPLOY $i ABSENT"
	fi
done
