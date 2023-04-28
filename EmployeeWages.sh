
#!/bin/bash -x


# Variable for checking the attendence
attendence_chk=$((RANDOM%2)) #0/1

# constant variables
is_present=1
full_day_hour=8
wage_per_hour=20

# initializing the variables
salary=0

# To check the attendence of the employee
if [ $attendence_chk -eq $is_present ]
then
    salary=$(($full_day_hour * $wage_per_hour))
    echo "The Employee is Present for Full day and the Salary is $salary"
else
    echo "Employee is Absent and the salary is $salary"
fi



# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20

# initializing the variables
salary=0

# To check the attendence of the employee
if [ $attendence_chk -eq $is_present_full_time ]
then
    salary=$(($full_day_hour * $wage_per_hour))
    echo "The Employee is Present for Full day and the Salary is $salary"

elif [ $attendence_chk -eq $is_present_part_time ]
then
    salary=$(($part_time_hour * $wage_per_hour))
    echo "The Employee is Present for Half day and the Salary is $salary"

else
    echo "The Employee is Absent and the salary is $salary"
fi













# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20

# initializing the variables
salary=0

# To check the attendence of the employee
if [ $attendence_chk -eq $is_present_full_time ]
then
    salary=$(($full_day_hour * $wage_per_hour))
    echo "The Employee is Present for Full day and the Salary is $salary"

elif [ $attendence_chk -eq $is_present_part_time ]
then
    salary=$(($part_time_hour * $wage_per_hour))
    echo "The Employee is Present for Half day and the Salary is $salary"

else
    echo "The Employee is Absent and the salary is $salary"
fi






#!/bin/bash

echo "Welcome To Employee Wage Computation Program"

# Variable for checking the attendence
attendence_chk=$((RANDOM%3)) #0/1/2

# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20


# initializing the variables
salary=0
daily_hour=0

case $attendence_chk in

$is_present_full_time) daily_hour=8
                       echo "The Employee is Present for Full day"
                       ;;
$is_present_part_time) daily_hour=4
                       echo "The Employee is Present for Half day"
                       ;;
0) echo "The Employee is Absent"
;;
esac

salary=$(($daily_hour * $wage_per_hour))
echo "Salary of an Employee is $salary"





#UC5
# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20
total_working_days=20



# initializing the variables
salary=0
daily_hour=0
total_working_hour=0

for ((day=1 ; day <= total_working_days ; day++))
do

    # Variable for checking the attendence
    attendence_chk=$((RANDOM%3)) #0/1/2

    case $attendence_chk in

    $is_present_full_time) daily_hour=8
                        echo "The Employee is Present for Full day"
                        ;;
    $is_present_part_time) daily_hour=4
                        echo "The Employee is Present for Half day"
                        ;;
    0)daily_hour=0
      echo "The Employee is Absent"
    ;;
    esac

    salary=$(($daily_hour * $wage_per_hour))
    echo "Salary of an Employee is $salary"
    total_working_hour=$(($total_working_hour + $daily_hour))
   
done

monthly_salary=$(($total_working_hour * $wage_per_hour))
echo "The Monthly Salary of an Employee is $monthly_salary"








#UC6
# constant variables
is_present_full_time=1
is_present_part_time=2
full_day_hour=8
part_time_hour=4
wage_per_hour=20
total_working_days=20
total_working_hours=100


# initializing the variables
salary=0
daily_hour=0
total_working_hour=0
day=1

while (( $day <= $total_working_days && $total_working_hour <= $total_working_hours))
do

    # Variable for checking the attendence
    attendence_chk=$((RANDOM%3)) #0/1/2

    case $attendence_chk in

    $is_present_full_time) daily_hour=8
                        echo "The Employee is Present for Full day"
                        ;;
    $is_present_part_time) daily_hour=4
                        echo "The Employee is Present for Half day"
                        ;;
    0)daily_hour=0
      echo "The Employee is Absent"
    ;;
    esac

    salary=$(($daily_hour * $wage_per_hour))
    echo "Salary of an Employee is $salary"
    total_working_hour=$(($total_working_hour + $daily_hour))
    ((day++))
 
done

monthly_salary=$(($total_working_hour * $wage_per_hour))
echo "The Monthly Salary of an Employee is $monthly_salary"
