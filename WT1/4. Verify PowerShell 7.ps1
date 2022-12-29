# Script: 4. Verify PowerShell 7.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Verifies the location of the PowerShell Modules
# Prerequisites: PowerShell installed




# Sets a variable 
$I = 0
# use a split function, pipes and loop to print out the location of the modules
$env:PSModulePath -split ';' |
Foreach-Object {"[{0:N0}]  {1}" -f $I++, $_}