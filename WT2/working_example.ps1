# Script: working_example.ps1
# By: JOR
# Purpose : Example showing basic commands in PowerShell
# Prerequisites: None




# create variable amount
$amount = 111 
# create variable vat
$VAT = 0.23 
# create variable to hold result of calculation
$result = $amount * $VAT 
# print resutl
$result 
# create a variable to display the result and includes prevously created variables
$text = "Total €$result is the sum of €$amount with $VAT% VAT" 
#print result
$text


# store the output of command for later use
# list items in c drive
$dir_listing = Get-ChildItem c:\ 
$dir_listing

#test if variable exist - returns true if it does
test-path variable:\dir_listing

New-Variable JORzVariable -value 3.142 -description "PI with write-protection" -option ReadOnly 
Get-Variable JORzVariable