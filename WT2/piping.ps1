# Script: piping.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Pipe the output of one command to be the input of another
# Prerequisites: Logged in as administrator 



# prints a list of files in System32 directory
Dir | Format-Table | Out-Host