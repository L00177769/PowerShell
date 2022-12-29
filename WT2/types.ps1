# Script: types.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Demonstrates the use of PowerShell data types
# Prerequisites: none


# define a variable 
$StringValue = "Yoo hoo!" 
# convert to upper case
$StringValue.ToUpper() 
# convert to lower case
$StringValue.ToLower()


# define an array
$MyArray = 1,2,3,4,5 
# print an array item
$MyArray[1]
$MyArray[4]

# integer types for 32 bit and 64 numbers
# create a variable with a little number - 32 bit type
$LittleNumber = 12345
# get the integar type 
$LittleNumber.GetType() 
# get the big number - 64 bit type
$BigNumber = 123456789123456789
# get number type 
$BigNumber.GetType()

# floating point numbers - 32 and 64 bit options - and also 128 bit type
# set value as floating number
[float]$Floaty32 = 12.12
# get floating number type 
$Floaty32.GetType() 
# set double number 
[double]$Floaty64 = 12345.1234
# display number type 
$Floaty64.GetType()