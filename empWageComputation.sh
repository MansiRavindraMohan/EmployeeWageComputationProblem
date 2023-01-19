echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
MaxWorkingHr=100;
EmpRatePerHr=20;
NumWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $MaxWorkingHr &&
	 $totalWorkingDays -lt $NumWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
	$isFullTime)
	empHrs=8	
	;;
	$isPartTime)
	empHrs=4
	;;
	*)
	empHrs=0
	;;	
	esac
totalEmpHrs=$(($totalEmpHr*$empHrs))
done
totalSalary=$(($totalEmpHr+$EmpRatePerHr));
echo $totalSalary
