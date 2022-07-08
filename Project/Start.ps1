#region Start as Admin
function Test-Admin()
{
  $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
  $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  
{
	if ($elevated)
    {
        write-host: "Not able to elevate PowerShell Session." -foregroundcolor "red"
		pause
    }else
	{
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
	}
stop-process $PID
}
#endregion Start as Admin

