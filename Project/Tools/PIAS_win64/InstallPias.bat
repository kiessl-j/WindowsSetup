@echo off 
REM RsInstallationAssistantService64.msi DEVICEGROUP="DEFAULT" DISKSPACE=4000 CHECKSIGNATURE=0
REM First line will be executed from the BasicSettings-Script
REG ADD "HKLM\Software\Wow6432Node\Rohde&Schwarz\SoftwarePlatform" /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Rohde&Schwarz\SoftwarePlatform\RAMONSetup" /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Rohde&Schwarz\SoftwarePlatform\RAMONSetup" /v MaterialNumber /t REG_SZ /d 3058.3247.02 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Rohde&Schwarz\SoftwarePlatform\RAMONSetup" /v DeviceName /t REG_SZ /d ^%COMPUTERNAME%^ /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Rohde&Schwarz\SoftwarePlatform\RAMONSetup" /v SerialNumber /t REG_SZ /d "000000" /f

