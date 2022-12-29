# Script: 7. HelloWorld.PSM1
# By: Martina Atkinson(L00177769)
# Purpose : Creates a PowerShell Module with function to print Hello World Message,in the specified module location below
# Prerequisites: None



# creates a variable to hold the location for the new module
$MyModulePath = "C:\users\$env:USERNAME\Documents\PowerShell\Modules\HelloWorld"
$MyModule = @"
# HeloWorld.PSM1
Function Get-HelloWorld {
   "Hello World from MA"
}
"@
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1
Get-Module -Name HelloWorld -ListAvailable