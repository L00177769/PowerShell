# Script: Setup DC1.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Script to Rename a Server, set IP Address and set it up as Domain Controller with domain services
# Prerequisites: Logged in as administrator 

<#
Forest/domain setup script.
Run one line at a time, under supervision!
#>

# Set the forest name
$FOREST = 'ads.solarsubmaines.com'

# Name the first DC computer
Rename-Computer -NewName dc-1
# Check existing IP addresses
Get-NetIPAddress
# My interface index was #3, got an IP address from the lecturer, the range is 172.28.78.1-50
New-NetIPAddress -InterfaceIndex 3 -IPAddress 172.28.78.1 -PrefixLength 22 -DefaultGateway 172.28.76.20
# Now reboot
Restart-Computer

# Install the required features
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
# Create the root domain
Install-ADDSForest -DomainName $FOREST
# Make sure DNS was installed
Get-WindowsFeature | where {($_.name -like "DNS")}
# Install DHCP 
Install-WindowsFeature DHCP -IncludeManagementTools
# First DC, so set external time synch
w32tm /config /manualpeerlist:172.28.64.1 /syncfromflags:manual /update


