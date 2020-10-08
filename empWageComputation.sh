#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
read -p "ENTER THE NUMBER OF EMPLOY" NUM
for (( i=1;i<=$NUM;i++ ))
do
	ATTEND=$((RANDOM%2))
	if [ $ATTEND -eq 1 ]
	then
		echo "EMPLOY $i PRESENT"
	else
		echo "EMPLOY $i ABSENT"
	fi
done
