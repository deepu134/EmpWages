#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
read -p "ENTER THE NUMBER OF EMPLOY" NUM
ISFULLTIME=1
WAGES_PER_HOUR=20
DAILY_EMPLOY_WAGES=0
for (( i=1;i<=$NUM;i++ ))
do
	RAND_CHECK=$((RANDOM%3+1))
	if [ $RAND_CHECK -eq $ISFULLTIME ]
	then
		DAILY_EMPLOY_WAGES=$(($WAGES_PER_HOUR*8))
		echo "WAGES FOR FULLTIME :$DAILY_EMPLOY_WAGES"
	else
		DAILY_EMPLOY_WAGES=$(($WAGES_PER_HOUR*4))
		echo "WAGES FOR PARTIME::$DAILY_EMPLOY_WAGES"
	fi
done
