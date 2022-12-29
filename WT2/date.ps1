# Script: date.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Script to get date in European format
# Prerequisites: None


#$(Get-Culture).DateTimeFormat
#  This does not work  
#$OGGI = [datetime] "25/12/2022"   

#Does Work 
$OGGI1 = [datetime] "25/Dec/2022"   
$OGGI1

#Complex way
$my_year = "2022"
$my_month  = "12"
$my_day  = "25"

$Var_Date  = (Get-Date -Year $my_year -Month $my_month -Day $my_day)
$var_Date


