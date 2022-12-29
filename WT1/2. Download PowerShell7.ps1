# Script: 2. Downoad PowerShell7.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Downloads a installation script Install-PowerShell.ps1
# Prerequisites: Internet Connection



# Download PowerShell 7 installation script from Microsoft
Set-Location C:\PowerShell 
$URI = "https://aka.ms/install-powershell.ps1" 
Invoke-RestMethod -Uri $URI | 
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1