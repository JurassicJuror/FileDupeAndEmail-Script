
cd\[filepath of containing folder]

COPY [filename].[file extension] [filename]%date:~-10,2%%date:~-7,2%%date:~-4,4%.[file extension]

>nul powershell.exe -executionpolicy unrestricted -command set-executionpolicy -Scope CurrentUser Bypass -Force
powershell.exe "& '.\FileDupeAndSendEmail.ps1'"

DEL [filename]%date:~-10,2%%date:~-7,2%%date:~-4,4%.[file extension]