@echo off
CLS
 ECHO.
:init
 setlocal DisableDelayedExpansion
 set cmdInvoke=1
 set winSysFolder=System32
 set "batchPath=%~dpnx0"
 rem this works also from cmd shell, other than %~0
 for %%k in (%0) do set batchName=%%~nk
 set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
 setlocal EnableDelayedExpansion
:checkPrivileges
  NET FILE 1>NUL 2>NUL
  if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )
:getPrivileges
  if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
  ECHO.
  ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
  ECHO args = "ELEV " >> "%vbsGetPrivileges%"
  ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
  ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
  ECHO Next >> "%vbsGetPrivileges%"
  if '%cmdInvoke%'=='1' goto InvokeCmd 
  ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
  goto ExecElevation
:InvokeCmd
  ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
  ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"
:ExecElevation
 "%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
 exit /B
:gotPrivileges
 setlocal & cd /d %~dp0
 if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)
title Windows Activator By Mr. Unknown_74#5239
goto CLSSTART
:CLSSTART
goto START
:START
echo Windows activator By Mr. Unknown_74#5239
echo This program uses code from "Skip TPM Check on Dynamic Update V10", made by AveYo on github.
echo https://github.com/AveYo/MediaCreationTool.bat/blob/main/bypass11/Skip_TPM_Check_on_Dynamic_Update.cmd
echo Disclaimer: Do NOT use is if windows is already activated.
echo This only works if windows is unactivated and on the same build that you select.
echo What version of Windows are you running?
echo All Home editions are not supported
echo All S editions are not supported
echo -----------------------------------------------
echo Only these options are supported:
echo.
echo 1) Windows 10/11 Pro
echo 2) Windows 10/11 Pro N
echo 3) Windows 10/11 Pro for Workstations
echo 4) Windows 10/11 Pro for Workstations N
echo 5) Windows 10/11 Pro Education
echo 6) Windows 10/11 Pro Education N
echo 7) Windows 10/11 Education
echo 8) Windows 10/11 Education N
echo 9) Windows 10/11 Enterprise
echo 10) Windows 10/11 Enterprise N
echo 11) Windows 10/11 Enterprise G
echo 12) Windows 10/11 Enterprise G N
echo 13) Windows Server 2022 Datacenter
echo 14) Windows Server 2022 Standard
echo 15) Windows Server 2019 Datacenter
echo 16) Windows Server 2019 Standard
echo 17) Windows Server 2019 Essentials
echo 18) Windows Server 2016 Datacenter
echo 19) Windows Server 2016 Standard
echo 20) Windows Server 2016 Essentials
echo 21) Windows 8.1 Pro
echo 22) Windows 8.1 Pro N
echo 23) Windows 8.1 Enterprise
echo 24) Windows 8.1 Enterprise N
echo 25) Windows 8 Pro
echo 26) Windows 8 Pro N
echo 27) Windows 8 Enterprise
echo 28) Windows 8 Enterprise N
echo 29) Windows 7 Professional
echo 30) Windows 7 Professional N
echo 31) Windows 7 Professional E
echo 32) Windows 7 Enterprise
echo 33) Windows 7 Enterprise N
echo 34) Windows 7 Enterprise E
echo 35) Other (Type the product key in yourself.) (You need to know what you're doing)
echo -------------------------------------------------
echo You can find all of the product keys on https://docs.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys#install-a-product-key 
echo.
set input=
set /p input= 1-35:
if %input%==1 goto 1 if NOT goto CLSSTART
if %input%==2 goto 2 if NOT goto CLSSTART
if %input%==3 goto 3 if NOT goto CLSSTART
if %input%==4 goto 4 if NOT goto CLSSTART
if %input%==5 goto 5 if NOT goto CLSSTART
if %input%==6 goto 6 if NOT goto CLSSTART
if %input%==7 goto 7 if NOT goto CLSSTART
if %input%==8 goto 8 if NOT goto CLSSTART
if %input%==9 goto 9 if NOT goto CLSSTART
if %input%==10 goto 10 if NOT goto CLSSTART
if %input%==11 goto 11 if NOT goto CLSSTART
if %input%==12 goto 12 if NOT goto CLSSTART
if %input%==13 goto 13 if NOT goto CLSSTART
if %input%==14 goto 14 if NOT goto CLSSTART
if %input%==15 goto 15 if NOT goto CLSSTART
if %input%==16 goto 16 if NOT goto CLSSTART
if %input%==17 goto 17 if NOT goto CLSSTART
if %input%==18 goto 18 if NOT goto CLSSTART
if %input%==19 goto 19 if NOT goto CLSSTART
if %input%==20 goto 20 if NOT goto CLSSTART
if %input%==21 goto 21 if NOT goto CLSSTART
if %input%==22 goto 22 if NOT goto CLSSTART
if %input%==23 goto 23 if NOT goto CLSSTART
if %input%==24 goto 24 if NOT goto CLSSTART
if %input%==25 goto 25 if NOT goto CLSSTART
if %input%==26 goto 26 if NOT goto CLSSTART
if %input%==27 goto 27 if NOT goto CLSSTART
if %input%==28 goto 28 if NOT goto CLSSTART
if %input%==29 goto 29 if NOT goto CLSSTART
if %input%==30 goto 30 if NOT goto CLSSTART
if %input%==31 goto 31 if NOT goto CLSSTART
if %input%==32 goto 32 if NOT goto CLSSTART
if %input%==33 goto 33 if NOT goto CLSSTART
if %input%==34 goto 34 if NOT goto CLSSTART
if %input%==35 goto 35 if NOT goto CLSSTART
goto CLSSTART
:1
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
goto SLMGR
:2
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=MH37W-N47XK-V7XM9-C7227-GCQG9
goto SLMGR
:3
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
goto SLMGR
:4
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF
goto SLMGR
:5
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
goto SLMGR
:6
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
goto SLMGR
:7
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto SLMGR
:8
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto SLMGR
:9
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
goto SLMGR
:10
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto SLMGR
:11
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
goto SLMGR
:12
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=44RPN-FTY23-9VTTB-MP9BX-T84FV
goto SLMGR



:13
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
pause
set key=WX4NM-KYWYW-QJJR4-XV3QB-6VM33
goto DDISM
:14
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=VDYBN-27WPP-V4HQT-9VMD4-VMK7H
goto SDISM
:15
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=WMDGN-G9PQG-XVVXX-R3X43-63DFG
goto DDISM
:16
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=N69G4-B89J2-4G8F4-WWYCC-J464C
goto SDISM
''all of this is by Mr. Unknown_74#5239 var 73928824799203487029384702394872093487''
:17
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=WVDHN-86M7X-466P6-VHXV7-YY726
goto EDISM
:18
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=CB7KF-BWN84-R7R2Y-793K2-8XDDG
goto DDISM
:19
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
goto SDISM
:20
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
set key=JCKRF-N37P4-C2D82-9YXRT-4M63B
goto EDISM



:21
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
goto SLMGR
:22
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY
goto SLMGR
''all of this is by Mr. Unknown_74#5239 var 73928824799203487029384702394872093487''
:23
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
goto SLMGR
:24
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=TT4HM-HN7YT-62K67-RGRQJ-JFFXW
goto SLMGR
:25
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=NG4HW-VH26C-733KW-K6F98-J8CK4
goto SLMGR
:26
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=XCVCF-2NXM9-723PB-MHCB7-2RYQQ
goto SLMGR
:27
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=32JNW-9KQ84-P47T8-D8GGY-CWCK7
goto SLMGR
:28
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT
goto SLMGR
:29
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
goto SLMGR
:30
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=MRPKT-YTG23-K7D7T-X2JMM-QY7MG
goto SLMGR
:31
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=W82YF-2Q76Y-63HXB-FGJG9-GF7QX
goto SLMGR
:32
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
goto SLMGR
:33
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=YDRBP-3D83W-TY26F-D46B2-XCKRJ
goto SLMGR
:34
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
set key=C29WB-22CC8-VJ326-GHFJW-H9DH4
goto SLMGR
:35
echo Wich version type of windows would you like activate?
echo --------------------------------------------------------
echo 1) Normal
echo 2) Server
echo 3) Other (Type in the entire command. You'll be sent to Command Prompt or Powershell)
echo 4) Cancel
set input=
set /p input= 1-4:
if %input%==1 goto OSLMGR if NOT goto CLSSTART
if %input%==2 goto ODISM if NOT goto CLSSTART
if %input%==3 goto ENDCHOICE if NOT goto CLSSTART
if %input%==4 goto CLSSTART if NOT goto CLSSTART
goto CLSSTART
:OSLMGR
set key= Default
echo Type in the product key. It is reccomended to copy and paste to get it correct. (Type yes or no (also y or n))
set /p key=
Are you sure "%key%" is correct?
set input=
set /p input= yes or no:
if %input%==yes goto OSLMGR2 if NOT goto 35
if %input%==y goto OSLMGR2 if NOT goto 35
if %input%==no goto 35 if NOT goto 35
if %input%==n goto 35 if NOT goto 35
goto 35
:OSLMGR2
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 4 /f
gpupdate /force
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d 4 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\svsvc\KMS" /v "" /t REG_SZ /d kms_4
gpupdate /force
goto SLMGR
:ODISM
echo Note that:
echo You cannot upgrade a server with an Active Directory Domain Service domain controller role.
''all of this is by Mr. Unknown_74#5239 var 73928824799203487029384702394872093487''
echo It will first have to be demoted to a member server (check that FSMO AD roles are not running on this DC, transfer them to other domain controllers if necessary);
echo.
echo If NIC Teaming is configured on the server, it must be disabled before upgrading;
echo.
echo Windows Server Eval Datacenter cannot be upgraded to Windows Server Standard Full. First, you need to upgrade your edition to Windows Server Datacenter Full,
echo and then use a little trick to downgrade the Windows Server edition (check the link at the end of the article);
echo.
echo You can convert both the full GUI version of Windows Server and the Windows Server Core (converting the trial version of Server Core is supported starting from the release of Windows Server 2016 14393.0.161119-1705.RS1_REFRESH).
echo.
echo If you just installed windows server and havent started setting it up, then there should be nothing to worry about.
echo.
pause
goto ODISM2
:ODISM2
echo What edition of windows serer do you want?
echo ---------------------------------------------
echo 1) Datacenter
echo 2) Standard
echo 3) Essentials
echo 4) Cancel
set input=
set /p input= 1-4:
if %input%==1 goto DODISM if NOT goto 35
if %input%==2 goto SODISM if NOT goto 35
if %input%==3 goto EODISM if NOT goto 35
if %input%==4 goto CLSSTART if NOT goto 35
goto 35
:DODISM
set key= Default
echo Type in the product key. It is reccomended to copy and paste to get it correct.
set /p key=
echo Are you sure "%key%" is correct? (Type yes or no (also y or n))
set input=
set /p input= yes or no:
if %input%==yes goto DDISM if NOT goto DODISM
if %input%==y goto DDISM if NOT goto DODISM
if %input%==no goto DODISM if NOT goto DODISM
if %input%==n goto DODISM if NOT goto DODISM
goto DODISM
:SODISM
set key= Default
echo Type in the product key. It is reccomended to copy and paste to get it correct.
set /p key=
echo Are you sure "%key%" is correct? (Type yes or no (also y or n))
set input=
set /p input= yes or no:
if %input%==yes goto SDISM if NOT goto SODISM
if %input%==y goto SDISM if NOT goto SODISM
if %input%==no goto SODISM if NOT goto SODISM
if %input%==n goto SODISM if NOT goto SODISM
goto SODISM
:EODISM
set key= Default
echo Type in the product key. It is reccomended to copy and paste to get it correct.
set /p key=
echo Are you sure "%key%" is correct? (Type yes or no (also y or n))
set input=
set /p input= yes or no:
if %input%==yes goto EDISM if NOT goto EODISM
if %input%==y goto EDISM if NOT goto EODISM
if %input%==no goto EODISM if NOT goto EODISM
if %input%==n goto EODISM if NOT goto EODISM
goto EODISM
:SLMGR
slmgr /ipk %key%

slmgr /skms kms8.msguides.com

slmgr /ato

goto FINISHWIN1011


:DDISM
dism /online /set-edition:ServerDatacenter /productkey:%key% /accepteula
pause
exit
:SDISM
dism /online /set-edition:ServerStandard /productkey:%key% /accepteula
pause
exit
:EDISM
echo The Essentials version of Windows Server has not been properly tested with Windows Activation.
echo It is reccomended that you create a system resore point before you continue.
pause
dism /online /set-edition:ServerEssentials /productkey:%key% /accepteula
pause
exit

:FINISHWIN1011
REG ADD "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 0 /f
gpupdate /force
taskkill /F /IM explorer.exe & start explorer
goto FINISHWIN10112
:FINISHWIN10112
echo All done! Windows 10/11 is now activated. There is no need to restart your PC. If there was an issue with the program, dm Mr. Unknown_74#5239
pause
goto SUS
''all of this is by Mr. Unknown_74#5239 var 73928824799203487029384702394872093487''
:SUS
goto MOGUS
:MOGUS
color 02
echo ʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδʅ œ Œʨ ʋ ʉ ∂∓∑≆ ⋾⋽ ⨋⨶ ⩐ ⪐⫳⪿ ⪮ζτ   μΩ  σ    ΨΞ  ξἔὭὥ  Ϡϛϼϡ ιͱͰϗᾑ  Δδ
goto MOGUS













































:ENDCHOICE
echo What terminal aplication do you want?
echo ---------------------------------------------
echo 1) Command Prompt
echo 2) Powershell
echo 3) Other (Type in yourself)
echo 4) Cancel
set input=
set /p input= 1-4:
if %input%==1 goto CMD if NOT goto ENDCHOICE
if %input%==2 goto PWSH if NOT goto ENDCHOICE
if %input%==3 goto EODISM if NOT goto ENDCHOICE
if %input%==4 goto 35 if NOT goto ENDCHOICE
goto ENDCHOICE






:CMD
start CMD
goto CLSSTART

:PWSH
start powershell.exe
goto CLSSTART



''all of this is by Mr. Unknown_74#5239 var 73928824799203487029384702394872093487''