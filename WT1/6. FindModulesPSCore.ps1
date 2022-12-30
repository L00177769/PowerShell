# Script: 6. FindModulesPSCore.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Find the number of modules that support PSCore
# Prerequisites: None


# create a variable to run the cmdlet to find the number of modules that support PSCore

$PGSMC = Find-Module -Name * -Tag 'PSEdition_Core'
"There are {0:N0} modules that support PowerShell Core" -f $PGSMC.Count