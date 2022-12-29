# Script: Setup DC2.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Installs services on server remotely using PowerShell remote session.
# Prerequisites: Logged in as administrator 



<#
Remote server setup script.
Run one line at a time, under supervision!
#>

$REMOTE_SERVER = 'server-1'
# Set the domain name
$FOREST = 'ads.solarsubmaines.com'

# Connect to server-1
Enter-PSSession $REMOTE_SERVER -Credential (Get-Credential "ads\administrator")

# Install the required features
Install-WindowsFeature -name AD-Domain-Services 
# Add a new doamin controller

Install-ADDSDomainController -DomainName $FOREST -InstallDns:$true -Credential (Get-Credential "ads\administrator")
# Make sure DNS was installed
Get-WindowsFeature | where {($_.name -like "DNS")}
# Install DHCP 
Install-WindowsFeature DHCP -IncludeManagementTools

Exit-PSSession
