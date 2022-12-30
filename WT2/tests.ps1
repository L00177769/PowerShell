# Script: tests.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Shows the use of Equality Operators using elseif statement
# Prerequisites: None




# if statement
# set variable values
$Variable1 = 12 
$Variable2 = 32 
# if statement if two variables are note equal print true or else do nothing
if ( $Variable1 -ne $Variable2 ) 
{ 
    Write-Output "The condition was true" 
}

# elseif statement which prints the day that is equal to 3
$day = 3 

if ( $day -eq 0 ) { $result = 'Sunday' } 
elseif ( $day -eq 1 ) { $result = 'Monday' } 
elseif ( $day -eq 2 ) { $result = 'Tuesday' } 
elseif ( $day -eq 3 ) { $result = 'Wednesday' } 
elseif ( $day -eq 4 ) { $result = 'Thursday' } 
elseif ( $day -eq 5 ) { $result = 'Friday' } 
elseif ( $day -eq 6 ) { $result = 'Saturday' } 
$result
