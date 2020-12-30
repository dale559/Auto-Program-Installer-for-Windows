Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
$wshell = New-Object -ComObject Wscript.Shell



$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1280,720)
$Form.text                       = "Auto Program Installation"
$Form.TopMost                    = $false

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 1056
$Panel1.width                    = 1032
$Panel1.location                 = New-Object System.Drawing.Point(9,90)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Auto Program Installation"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,30)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',30)

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey (Required for Most Installs)"
$installchoco.width              = 200
$installchoco.height             = 115
$installchoco.location           = New-Object System.Drawing.Point(16,19)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$brave                           = New-Object system.Windows.Forms.Button
$brave.text                      = "Brave Browser"
$brave.width                     = 150
$brave.height                    = 30
$brave.location                  = New-Object System.Drawing.Point(250,19)
$brave.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12) 

/*can u see this

$steam                           = New-Object system.Windows.Forms.Button
$steam.text                      = "Steam"
$steam.width                     = 150
$steam.height                    = 30
$steam.location                  = New-Object System.Drawing.Point(250,150)
$steam.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$epic                           = New-Object system.Windows.Forms.Button
$epic.text                      = "Epic Games"
$epic.width                     = 150
$epic.height                    = 30
$epic.location                  = New-Object System.Drawing.Point(250,200)
$epic.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$adobe                           = New-Object system.Windows.Forms.Button
$adobe.text                      = "Creative Cloud"
$adobe.width                     = 150
$adobe.height                    = 30
$adobe.location                  = New-Object System.Drawing.Point(415,150)
$adobe.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$minecraft                           = New-Object system.Windows.Forms.Button
$minecraft.text                      = "Minecraft"
$minecraft.width                     = 150
$minecraft.height                    = 30
$minecraft.location                  = New-Object System.Drawing.Point(250,250)
$minecraft.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$battle                           = New-Object system.Windows.Forms.Button
$battle.text                      = "Battle.net"
$battle.width                     = 150
$battle.height                    = 30
$battle.location                  = New-Object System.Drawing.Point(415,250)
$battle.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$discord                           = New-Object system.Windows.Forms.Button
$discord.text                      = "Discord"
$discord.width                     = 150
$discord.height                    = 30
$discord.location                  = New-Object System.Drawing.Point(415,200)
$discord.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$rockstar                           = New-Object system.Windows.Forms.Button
$rockstar.text                      = "Rockstar"
$rockstar.width                     = 150
$rockstar.height                    = 30
$rockstar.location                  = New-Object System.Drawing.Point(580,200)
$rockstar.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$geforce                           = New-Object system.Windows.Forms.Button
$geforce.text                      = "Geforce"
$geforce.width                     = 150
$geforce.height                    = 30
$geforce.location                  = New-Object System.Drawing.Point(580,150)
$geforce.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Optifine                           = New-Object system.Windows.Forms.Button
$Optifine.text                      = "Optifine 1.16.4 You have to have played the version before installing Optifine"
$Optifine.width                     = 150
$Optifine.height                    = 100
$Optifine.location                  = New-Object System.Drawing.Point(580,250)
$Optifine.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Optifine8                           = New-Object system.Windows.Forms.Button
$Optifine8.text                      = "Optifine 1.8.9 You have to have played the version before installing Optifine"
$Optifine8.width                     = 150
$Optifine8.height                    = 100
$Optifine8.location                  = New-Object System.Drawing.Point(750,250)
$Optifine8.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$firefox                         = New-Object system.Windows.Forms.Button
$firefox.text                    = "Firefox"
$firefox.width                   = 150
$firefox.height                  = 30
$firefox.location                = New-Object System.Drawing.Point(250,61)
$firefox.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$7zip                            = New-Object system.Windows.Forms.Button
$7zip.text                       = "7-Zip"
$7zip.width                      = 150
$7zip.height                     = 30
$7zip.location                   = New-Object System.Drawing.Point(584,104)
$7zip.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$irfanview                       = New-Object system.Windows.Forms.Button
$irfanview.text                  = "Irfanview"
$irfanview.width                 = 150
$irfanview.height                = 30
$irfanview.location              = New-Object System.Drawing.Point(417,19)
$irfanview.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$adobereader                     = New-Object system.Windows.Forms.Button
$adobereader.text                = "Adobe Reader DC"
$adobereader.width               = 150
$adobereader.height              = 30
$adobereader.location            = New-Object System.Drawing.Point(417,61)
$adobereader.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$notepad                         = New-Object system.Windows.Forms.Button
$notepad.text                    = "Notepad++"
$notepad.width                   = 150
$notepad.height                  = 30
$notepad.location                = New-Object System.Drawing.Point(417,104)
$notepad.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$gchrome                         = New-Object system.Windows.Forms.Button
$gchrome.text                    = "Google Chrome"
$gchrome.width                   = 150
$gchrome.height                  = 30
$gchrome.location                = New-Object System.Drawing.Point(250,104)
$gchrome.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$mpc                             = New-Object system.Windows.Forms.Button
$mpc.text                        = "Media Player Classic"
$mpc.width                       = 150
$mpc.height                      = 30
$mpc.location                    = New-Object System.Drawing.Point(584,61)
$mpc.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$vlc                             = New-Object system.Windows.Forms.Button
$vlc.text                        = "VLC"
$vlc.width                       = 150
$vlc.height                      = 30
$vlc.location                    = New-Object System.Drawing.Point(584,19)
$vlc.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$Backup                       = New-Object system.Windows.Forms.Button
$Backup.text                  = "Backup and Sync"
$Backup.width                 = 150
$Backup.height                = 30
$Backup.location              = New-Object System.Drawing.Point(751,105)
$Backup.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$winterminal                     = New-Object system.Windows.Forms.Button
$winterminal.text                = "Windows Terminal"
$winterminal.width               = 150
$winterminal.height              = 30
$winterminal.location            = New-Object System.Drawing.Point(751,61)
$winterminal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$vscode                          = New-Object system.Windows.Forms.Button
$vscode.text                     = "VS Code"
$vscode.width                    = 150
$vscode.height                   = 30
$vscode.location                 = New-Object System.Drawing.Point(751,19)
$vscode.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$foldersize                          = New-Object system.Windows.Forms.Button
$foldersize.text                     = "Folder Size Explorer"
$foldersize.width                    = 150
$foldersize.height                   = 30
$foldersize.location                 = New-Object System.Drawing.Point(750,200)
$foldersize.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$listary                          = New-Object system.Windows.Forms.Button
$listary.text                     = "Listary"
$listary.width                    = 150
$listary.height                   = 30
$listary.location                 = New-Object System.Drawing.Point(750,400)
$listary.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$tmx                          = New-Object system.Windows.Forms.Button
$tmx.text                     = "TMX"
$tmx.width                    = 150
$tmx.height                   = 30
$tmx.location                 = New-Object System.Drawing.Point(900,150)
$tmx.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$openhardware                          = New-Object system.Windows.Forms.Button
$openhardware.text                     = "Open Hardware Mointor"
$openhardware.width                    = 150
$openhardware.height                   = 30
$openhardware.location                 = New-Object System.Drawing.Point(900,200)
$openhardware.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$everything                          = New-Object system.Windows.Forms.Button
$everything.text                     = "Everything Search app"
$everything.width                    = 150
$everything.height                   = 50
$everything.location                 = New-Object System.Drawing.Point(250,300)
$everything.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$bluestacks                          = New-Object system.Windows.Forms.Button
$bluestacks.text                     = "Blue Stacks"
$bluestacks.width                    = 150
$bluestacks.height                   = 30
$bluestacks.location                 = New-Object System.Drawing.Point(417,300)
$bluestacks.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)

$installeverything                          = New-Object system.Windows.Forms.Button
$installeverything.text                     = "Install every Single One"
$installeverything.width                    = 150
$installeverything.height                   = 50
$installeverything.location                 = New-Object System.Drawing.Point(250,400)
$installeverything.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12)



$Form.controls.AddRange(@($Panel1,$Label1,$Panel2,$Label3,$Panel3,$Label4,$Label15,$Panel4,$Label20,$Label21,$Label23,$PictureBox1))
$Panel1.controls.AddRange(@($installchoco,$brave,$steam,$epic,$adobe,$minecraft,$battle,$discord,$rockstar,$geforce,$Optifine,$Optifine8,$firefox,$7zip,$irfanview,$adobereader,$notepad,$gchrome,$mpc,$vlc,$Backup,$winterminal,$vscode,$foldersize,$listary,$tmx,$openhardware,$everything,$bluestacks,$installeverything,$Label2))

$installchoco.Add_Click({ 
    Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$brave.Add_Click({ 
	Write-Host "Installing Brave Browser"
	choco install brave -y
	    $wshell.Popup("Operation Completed",0,"Done",0x0)	
})
$steam.Add_Click({ 
	Write-Host "Installing Steam"
	choco install steam -y
	    $wshell.Popup("Operation Completed",0,"Done",0x0)	
})
$epic.Add_Click({ 
	Write-Host "Installing Epic Games Lancher"
	choco install epicgameslauncher -y
	    $wshell.Popup("Epicgames",0,"Done",0x0)	
})
$adobe.Add_Click({ 
	Write-Host "Installing Creative Cloud"
	choco install adobe-creative-cloud -y
	    $wshell.Popup("adobe",0,"Done",0x0)	
})
$minecraft.Add_Click({ 
	Write-Host "Installing Minecraft"
	Write-Host "Almost done...."
	choco install minecraft-launcher -y
	    $wshell.Popup("Mincraft Launcher",0,"Done",0x0)	
})
$battle.Add_Click({ 
	Write-Host "Installing battle.net"
	$url = "https://www.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live"
	$outpath = "$PSScriptRoot/Battle.net-Setup.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Battle.net-Setup.exe"
	    $wshell.Popup("Battle Launcher",0,"Done",0x0)	
})
$discord.Add_Click({ 
	Write-Host "Installing Discord"
	Write-Host "Almost done...."
	choco install discord -y
	    $wshell.Popup("Discord is installed",0,"Done",0x0)	
})

$rockstar.Add_Click({ 
	Write-Host "Installing Rockstar Games Lanucher"
	Write-Host "Almost done...."
	$url = "https://gamedownloads.rockstargames.com/public/installer/Rockstar-Games-Launcher.exe#_ga=2.160027773.1955916408.1609122926-1181503246.1606357599"
	$outpath = "$PSScriptRoot/Rockstar-Games-Launcher.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Rockstar-Games-Launcher.exe"
	    $wshell.Popup("Rockstar games lanucher is installed",0,"Done",0x0)	
})

$geforce.Add_Click({ 
	Write-Host "Installing Geforce Experience "
	Write-Host "Almost done...."
	choco install geforce-experience -y
	$wshell.Popup("Geforce Experience  is installed",0,"Done",0x0)	
})

$Optifine.Add_Click({ 
	Write-Host "Installing Optifine 1.16.4"
	Write-Host "Almost done...."
	$url = "https://optifine.net/downloadx?f=OptiFine_1.16.4_HD_U_G5.jar&x=cf01d016df32d79aa27a58c0ee0191d3"
	$outpath = "$PSScriptRoot/OptiFine_1.16.4_HD_U_G5.jar"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/OptiFine_1.16.4_HD_U_G5.jar"
	    $wshell.Popup("Optifine 1.16.4 is Installed",0,"Done",0x0)	
})

$Optifine8.Add_Click({ 
	Write-Host "Installing Optifine 1.8.9"
	Write-Host "Almost done...."
	$url = "https://optifine.net/downloadx?f=OptiFine_1.8.9_HD_U_L5.jar&x=d192ea9d4a74560dad75e28578d461b6"
	$outpath = "$PSScriptRoot/OptiFine_1.8.9_HD_U_L5.jar"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/OptiFine_1.8.9_HD_U_L5.jar"
	    $wshell.Popup("Optifine 1.8.9 is Installed",0,"Done",0x0)	
})


$firefox.Add_Click({ 
    Write-Host "Installing Firefox"
    choco install firefox -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$gchrome.Add_Click({ 
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$irfanview.Add_Click({ 
    Write-Host "Installing Irfanview (Image Viewer)"
    choco install irfanview -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$adobereader.Add_Click({ 
    Write-Host "Installing Adobe Reader DC"
    choco install adobereader -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$notepad.Add_Click({ 
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$vlc.Add_Click({ 
    Write-Host "Installing VLC Media Player"
    choco install vlc -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$Backup.Add_Click({ 
    Write-Host "Installing Google Backup and Sync"
    choco install google-backup-and-sync
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$7zip.Add_Click({ 
    Write-Host "Installing 7-Zip Compression Tool"
    choco install 7zip -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$vscode.Add_Click({ 
    Write-Host "Installing Visual Studio Code"
    choco install vscode -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})

$winterminal.Add_Click({ 
    Write-Host "Installing New Windows Terminal"
    choco install microsoft-windows-terminal -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
})
$foldersize.Add_Click({ 
	Write-Host "Installing Folder Size Explorer"
	Write-Host "Almost done...."
	$url = "https://storage.googleapis.com/downloads.bazwise.com/FolderSizeExplorer-04-MAR-2018-V200.zip"
	$outpath = "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200/setup.exe"
	    $wshell.Popup("Folder Size Explorer is Installed",0,"Done",0x0)
})

$listary.Add_Click({ 
	Write-Host "Installing Listary"
	Write-Host "Almost done...."
	choco install listary
	    $wshell.Popup("Listary is Installed",0,"Done",0x0)
})
$tmx.Add_Click({ 
	Write-Host "Installing Task Manger Deluxe"
	Write-Host "Almost done...."
	$url = "https://www.mitec.cz/Downloads/TMX.zip"
	$outpath = "$PSScriptRoot/TMX.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/TMX.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/TMX/TMX.exe"
	    $wshell.Popup("Task Manger Deluxe is Installed",0,"Done",0x0)
})

$openhardware.Add_Click({ 
	Write-Host "Installing Open Hardware Mointor"
	Write-Host "Almost done...."
	$url = "https://openhardwaremonitor.org/files/openhardwaremonitor-v0.9.6.zip"
	$outpath = "$PSScriptRoot/openhardwaremonitor-v0.9.6.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/openhardwaremonitor-v0.9.6.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/openhardwaremonitor-v0.9.6/OpenHardwareMonitor/OpenHardwareMonitor.exe"
	    $wshell.Popup("Open Hardware Monitor is Installed",0,"Done",0x0)
})

$everything.Add_Click({ 
	Write-Host "Installing Everything"
	Write-Host "Almost done...."
	$url = "https://www.voidtools.com/Everything-1.4.1.1002.x86-Setup.exe"
	$outpath = "$PSScriptRoot/Everything-1.4.1.1002.x86-Setup.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Everything-1.4.1.1002.x86-Setup.exe"
	    $wshell.Popup("everthing is Installed",0,"Done",0x0)	
})

$bluestacks.Add_Click({ 
	Write-Host "Installing Blue Stacks"
	Write-Host "Almost done...."
	$url = "https://cloud.bluestacks.com/api/getdownloadnow?platform=win&win_version=10&client_uuid=f0293efe-9da7-4a7b-8c47-57d721a77220&app_pkg=&platform_cloud=%257B%2522description%2522%253A%2522Chrome%252087.0.4280.88%2520on%2520Windows%252010%252064-bit%2522%252C%2522layout%2522%253A%2522Blink%2522%252C%2522manufacturer%2522%253Anull%252C%2522name%2522%253A%2522Chrome%2522%252C%2522prerelease%2522%253Anull%252C%2522product%2522%253Anull%252C%2522ua%2522%253A%2522Mozilla%252F5.0%2520(Windows%2520NT%252010.0%253B%2520Win64%253B%2520x64)%2520AppleWebKit%252F537.36%2520(KHTML%252C%2520like%2520Gecko)%2520Chrome%252F87.0.4280.88%2520Safari%252F537.36%2522%252C%2522version%2522%253A%252287.0.4280.88%2522%252C%2522os%2522%253A%257B%2522architecture%2522%253A64%252C%2522family%2522%253A%2522Windows%2522%252C%2522version%2522%253A%252210%2522%257D%257D&preferred_lang=en&utm_source=&utm_medium=&gaCookie=&gclid=&clickid=&msclkid=&affiliateId=&offerId=&transaction_id=&aff_sub=&first_landing_page=&referrer=&download_page_referrer=&utm_campaign=download-page&exit_utm_campaign=download-page&incompatible=false"
	$outpath = "$PSScriptRoot/BlueStacksInstaller.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/BlueStacksInstaller.exe"
	    $wshell.Popup("Blue stacks is Installed",0,"Done",0x0)	
})
$installeverything.Add_Click({ 
	Write-Host "Installing Every Application"
	Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
	Write-Host "Installing Brave Browser"
	choco install brave -y
	Write-Host "Installing Steam"
	choco install steam -y
	Write-Host "Installing Epic Games Lancher"
	choco install epicgameslauncher -y
	Write-Host "Installing Creative Cloud"
	choco install adobe-creative-cloud -y
	Write-Host "Installing Minecraft"
	choco install minecraft-launcher -y
	Write-Host "Installing battle.net"
	$url = "https://www.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live"
	$outpath = "$PSScriptRoot/Battle.net-Setup.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Battle.net-Setup.exe"
	Write-Host "Installing Discord"
	choco install discord -y
	Write-Host "Installing Rockstar Games Lanucher"
	$url = "https://gamedownloads.rockstargames.com/public/installer/Rockstar-Games-Launcher.exe#_ga=2.160027773.1955916408.1609122926-1181503246.1606357599"
	$outpath = "$PSScriptRoot/Rockstar-Games-Launcher.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Rockstar-Games-Launcher.exe"
	Write-Host "Installing Geforce Experience "
	choco install geforce-experience -y
	Write-Host "Installing Firefox"
    choco install firefox -y	
	Write-Host "Installing Google Chrome"
    choco install googlechrome -y
	Write-Host "Installing Irfanview (Image Viewer)"
    choco install irfanview -y
	Write-Host "Installing Adobe Reader DC"
    choco install adobereader -y
	Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
	Write-Host "Installing VLC Media Player"
	choco install vlc -y
	Write-Host "Installing Google Backup and Sync"
    choco install google-backup-and-sync -y
	Write-Host "Installing 7-Zip Compression Tool"
    choco install 7zip -y
	Write-Host "Installing Visual Studio Code"
	choco install vscode -y
	Write-Host "Installing Folder Size Explorer"
	$url = "https://storage.googleapis.com/downloads.bazwise.com/FolderSizeExplorer-04-MAR-2018-V200.zip"
	$outpath = "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/FolderSizeExplorer-04-MAR-2018-V200/setup.exe"
	Write-Host "Installing Listary"
	choco install listary -y
	Write-Host "Installing Task Manger Deluxe"
	$url = "https://www.mitec.cz/Downloads/TMX.zip"
	$outpath = "$PSScriptRoot/TMX.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/TMX.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/TMX/TMX.exe"
	Write-Host "Installing Open Hardware Mointor"
	$url = "https://openhardwaremonitor.org/files/openhardwaremonitor-v0.9.6.zip"
	$outpath = "$PSScriptRoot/openhardwaremonitor-v0.9.6.zip"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Expand-Archive "$PSScriptRoot/openhardwaremonitor-v0.9.6.zip"
	Write-Host "Zip Unziped"	
	Start-Process -Filepath "$PSScriptRoot/openhardwaremonitor-v0.9.6/OpenHardwareMonitor/OpenHardwareMonitor.exe"
	Write-Host "Installing Everything"
	$url = "https://www.voidtools.com/Everything-1.4.1.1002.x86-Setup.exe"
	$outpath = "$PSScriptRoot/Everything-1.4.1.1002.x86-Setup.exe"
	$ProgressPreference = 'SilentlyContinue'
	Invoke-WebRequest -Uri $url -OutFile $outpath
	Start-Process -Filepath "$PSScriptRoot/Everything-1.4.1.1002.x86-Setup.exe"
	Write-Host "Done installing every app"
	$wshell.Popup("Everyone is Installed",0,"Done",0x0)

})

[void]$Form.ShowDialog()
