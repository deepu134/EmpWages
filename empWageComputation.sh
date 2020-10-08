#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
ISFULLTIME=1
ISPARTTIME=2
WAGES_PER_HOUR=20
TOTAL_EMPLOY_WAGES=0
WORKING_DAYS=20
TOTAL_WORKING_HOURS=100
count=0
function wages(){
for (( i=1;i<=$1;i++ ))
do
	RAND_CHECK=$((RANDOM%3+1))
	if [ $count -ne $2 ]
	then
		case $RAND_CHECK in
			$ISFULLTIME)
			TOTAL_EMPLOY_WAGES=$(($TOTAL_EMPLOY_WAGES+$(($WAGES_PER_HOUR*8))))
			count=$(($count+8));;
			$ISPARTTIME)
			TOTAL_EMPLOY_WAGES=$(($TOTAL_EMPLOY_WAGES+$(($WAGES_PER_HOUR*4))))
			count=$(($count+4));;
			*);;
		esac
	else
		break
	fi
done
}
wages  $WORKING_DAYS $TOTAL_WORKING_HOURS
echo $count
echo "TOTAL WAGES :$TOTAL_EMPLOY_WAGES"
#echo "WAGES FOR PARTIME::$DAILY_EMPLOY_WAGES_PART_TIME"
