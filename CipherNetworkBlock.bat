@echo off
net.exe session 1>NUL 2>NUL || (start cmd /c "@echo off & title EndProjectCipher & mode con cols=36 lines=2 & color 0C & echo You must run this as Adminstrator & pause>nul" & EXIT)
echo.
echo. >> %WINDIR%\System32\drivers\etc\hosts
echo [ProjectEndCipher] Blocking cipher-panel.me...
echo 127.0.0.1 cipher-panel.me >> %WINDIR%\System32\drivers\etc\hosts
echo [ProjectEndCipher] Blocked cipher-panel.me
echo.
echo [ProjectEndCipher] Blocking ciphercheats.com...
echo 127.0.0.1 ciphercheats.com >> %WINDIR%\System32\drivers\etc\hosts
echo [ProjectEndCipher] Blocked ciphercheats.com
echo.
echo [ProjectEndCipher] Blocking keyx.club...
echo 127.0.0.1 keyx.club >> %WINDIR%\System32\drivers\etc\hosts
echo [ProjectEndCipher] Blocked keyx.club
echo.
echo [ProjectEndCipher] Blocking dark-utilities.xyz...
echo 127.0.0.1 dark-utilities.xyz >> %WINDIR%\System32\drivers\etc\hosts
echo [ProjectEndCipher] Blocked dark-utilities.xyz
echo.
pause 