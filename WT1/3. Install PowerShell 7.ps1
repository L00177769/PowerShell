# Script: 3. Install PowerShell 7.ps1
# By: Martina Atkinson(L00177769)
# Purpose : Script created by Lecturer, to run the Install-PowerShell.ps1 with parameters defined below.
# Prerequisites: Install-PowerShell.ps1 must be available in the specified location on the c drive

# Runs script in quiet mode and allows PowerShell remoting

$MYPARMS =@{
UseMSI = $true
#Quiet = $true
AddExplorerContextMenu = $true
EnablePSRemoting = $true
}
C:\PowerShell\Install-PowerShell.ps1 @MYPARMS