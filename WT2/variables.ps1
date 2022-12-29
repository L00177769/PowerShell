# Script:variables.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Working with variables in PowerShell
# Prerequisites: None


# creates a variable 
$Rubbish = 1, 2, "a", "££"
# prints variable to screen 
$Rubbish 
# clears the contents of a variable
clear-variable -Name Rubbish
$Rubbish 
# removes a variable
Remove-Variable -Name Rubbish
# print variable 
$Rubbish

# set variable
$Rubbish = 1, 2, "a", "££"
# get type of variable 
$Rubbish.GetType()

# cast a variable so it has fixed type
[int]$Rubbish = 1 
$Rubbish.GetType()

# if pass string to variable, it will automatically convert it
[int]$Rubbish = 1 
$Rubbish = "123456789" 
$Rubbish

# if pass a string of letters, PowerShell won't convert and gives an error
# [int]$Rubbish = 1 
# $Rubbish = "This will give you an error!" 
# $Rubbish

[datetime]$OGGI = "11/13/2022" 
$OGGI



