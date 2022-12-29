# Script: 5. FindModules.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Finds the number of modules in the PowerShell Gallery
# Prerequisites: None


# uses Find-Module cmdlet to find the number of modules in PowerShellGallery and prints number to screen

$PGSM = Find-Module -Name *
"There are {0:N0} Modules in the PS Gallery" -f $PGSM.count