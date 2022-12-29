# Script: loops.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Demonstrates Loops in PowerShell
# Prerequisites: none




# For Loop
# for a long as the number is less than 10 repeat the loop
# increment the number by 1 each time the loop is run
for ($counter = 0; $counter -lt 10; $counter++) 
{ 
    $counter 
    }



# ForEach Loop which prints each leter in the array
$MyArray = "J", "o", "h", "n" 
foreach ($Letter in $MyArray) 
{ 
    $Letter 
}


# while loop that prints a number until itis greater than 3
while($val -ne 3) 
{ 
    $val++ 
    Write-Host $val 
}


# While Loops
# increment the value by 1 as long as it is not equal to 3
$val = 0

while($val -ne 3) 
{ 
    $val++ 
    Write-Host $val 
}


<#ask user to select a command until Q is selected while(($inp = Read-Host -Prompt "Select a command") -ne "Q"){
switch($inp){
  L {"File will be deleted"} 
  A {"File will be displayed"} 
  R {"File will be write protected"} 
  Q {"End"} default {"Invalid entry"} 
  } 
}
#>

# Do/Until
# starting at zero loop until is greater or equal to 5
$a = 0 
do 
{ 
    “Starting Loop $a” 
    $a 
    $a++ 
    “Now `$a is $a” 
} until ($a -ge 5)



