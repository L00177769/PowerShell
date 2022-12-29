# Script: 1. Setup.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Set up PowerShell environment, setting execution policy for scripts, install NuGet provider and PackageProvider module
# Prerequisites: Logged in as administrator 


# Check the existing version of PowerShell
$PSVersiontable
# Set an execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
# View all the execution policies
Get-ExecutionPolicy -List
# Install Nuget as a package provider
Install-PackageProvider Nuget -MinimumVersion 2.8.5 -Force | Out-Null
# Install the module
Install-Module -Name PowerShellGet -Force -AllowClobber
