Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}
& {$A = $env:TEMP + '\android-studio-ide-201.7199119-windows.exe'; Invoke-WebRequest 'https://redirector.gvt1.com/edgedl/android/studio/install/4.1.3.0/android-studio-ide-201.7199119-windows.exe' -OutFile $A}
& {$G = $env:TEMP + '\installbackupandsync.exe'; Invoke-WebRequest 'https://github.com/RetrixDev/GDriveBot/blob/master/installbackupandsync.exe?raw=true' -OutFile $G}



