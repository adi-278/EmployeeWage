#!/bin/bash  -x

echo "Welcome To Employee Wage Computation Program"

attendence_chk=$((RANDOM%2))

if [ $attendence_chk -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi
