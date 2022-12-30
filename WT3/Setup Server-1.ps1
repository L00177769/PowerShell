# Script: 1. Setup Server-1.ps1
# By: Martina Atkinson(L00177769)
# Purpose: Sets up Server with name, IP address, Domain Services and allows PowerShell Remoting 
# Prerequisites: Logged in as administrator 



<#
Server setup script.
Run one line at a time, under supervision!
#>

# Name the first DC computer
Rename-Computer -NewName server-1
# Check existing IP addresses
Get-NetIPAddress
# My interface index was #5, get an IP address from the lecturer, the range is 172.28.78.1-50
New-NetIPAddress -InterfaceIndex 3 -IPAddress 172.28.78.2 -PrefixLength 22 -DefaultGateway 172.28.76.20
# Set DC-1 as being the DNS
Set-DnsClientServerAddress -InterfaceIndex 3 -ServerAddresses 172.28.78.1
# Join the domain, you will be asked for dc-1 username and password
add-computer –domainname "ads.solarsubmaines.com"  -restart
# Now reboot
Restart-Computer
# Allow for remote scripting
Enable-PSRemoting