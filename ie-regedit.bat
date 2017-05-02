rem Internet Explorer 11 registry settings for Selenium support (32-bit only)

rem Disable "Protected Mode" For Each Zone
FOR /L %%G IN (1,1,4) DO reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\%%G" /v "2500" /t "REG_DWORD" /d 0 /f
rem Current User
FOR /L %%G IN (1,1,4) DO reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\%%G" /v "2500" /t "REG_DWORD" /d 0 /f

rem Disable "Enhanced Protected Mode"
reg add "HKLM\Software\Microsoft\Internet Explorer\Main" /v "Isolation" /d "PMIL" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Internet Explorer\Main" /v "Isolation" /d "PMIL" /f

rem To maintain connection to IE instance
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BFCACHE" /v "iexplore.exe" /t "REG_DWORD" /d 0 /f
rem Current User
reg add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BFCACHE" /v "iexplore.exe" /t "REG_DWORD" /d 0 /f