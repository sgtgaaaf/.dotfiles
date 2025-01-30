#Aliases
Set-Alias tre treeUnix
Set-Alias brew winget
Set-Alias add gitAdd
Set-Alias status gitStatus
Set-Alias commit gitCommit
Set-Alias pull gitPull
Set-Alias push gitPush
Set-Alias fetch gitFetch
#Set-Alias vim nvim
Set-Alias remove uninstall
Set-Alias ccc clear
Set-Alias cdc cdBack
Set-Alias psconfig profileFile 
Set-Alias cdcc cdBackTwice
Set-Alias search searchEngine
Set-Alias vsearch youTube
Set-Alias company sharepoint
Set-Alias app powerapps
Set-Alias fullpath fullPathOfEverything
Set-Alias fullFolders fullPathOfFolders
Set-Alias ib runIronBreezeDebug
Set-Alias sql mysqlcli
Set-Alias exp openFileInCurrentLocation
Set-Alias open openFileInGivenLocation
Set-Alias java8 setJavaAs8
Set-Alias jpack setJpackage15
Set-Alias java21 setJava21
Set-Alias code setCodeExe
Set-Alias em cdToEquipmentManagementFolder 

#Prompt
#oh-my-posh init pwsh --config 'C:/Users/Sarthak.Ghimire/OneDrive - Stimwell Services Ltd/Documents/PowerShell/myprofile.omp.json' | Invoke-Expression
C:\Users\Sarthak.Ghimire\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe init pwsh --config 'C:/Users/Sarthak.Ghimire/.config/ohmyposh/zen.toml' | Invoke-Expression
# oh-my-posh init pwsh --config 'C:/Users/Sarthak.Ghimire/.config/ohmyposh/zen.toml' | Invoke-Expression

function cdToEquipmentManagementFolder {
    cd "~\Stimwell Services Ltd\Company - Iron Breeze\Equipment Management\2024\"
}

function setCodeExe {
    param (
            [string[]]$args
          )
        & C:\Users\Sarthak.Ghimire\AppData\Local\Programs\VSCodium\VSCodium.exe $args
}

function setJpackage15 {
    param([string[]]$args)
        & 'C:\Users\Sarthak.Ghimire\.jdks\corretto-15.0.2\bin\jpackage.exe' $args
}


function setJpackage21 {
    param([string[]]$args)
        & 'C:\Users\Sarthak.Ghimire\.jdks\openjdk-21.0.1\bin\jpackage.exe' $args
}

function setJavaAs8 {
    param([string[]]$args)
        & 'C:\Program Files (x86)\Java\jre-1.8\bin\java.exe' $args
}

function setJava21 {
    param([string[]]$args)
        & 'C:\Users\Sarthak.Ghimire\.jdks\openjdk-21.0.1\bin\java.exe' $args
}

function openFileInGivenLocation{
    Invoke-Item
}

function openFileInCurrentLocation{
    Invoke-Item .
}

function fullPathOfEverything{
    Get-ChildItem -Recurse | Select-Object -ExpandProperty FullName
}

function mysqlcli {
    & 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MySQL\MySQL Server 8.0\MySQL 8.0 Command Line Client.lnk'
#'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe --defaults-file=C:\ProgramData\MySQL\MySQL Server 8.0\my.ini -uroot -p'
}

function fullPathOfFolders{
    Get-ChildItem -Directory -Recurse | Select-Object -ExpandProperty FullName
}

function runIronBreezeDebug {
    cd "C:\Program Files (x86)\StimWell Services Ltd\IronBreeze\" && ./Debug_run.bat
}

function powerapps {
    start https://apps.powerapps.com/play/e/default-11368eec-2964-4462-a618-cf94fabff4ad/a/ba65db70-0ed7-4708-b08b-d2fef550e7a9?tenantId=11368eec-2964-4462-a618-cf94fabff4ad
}  

function sharepoint {
    start https://stimwell.sharepoint.com/company
}

function searchEngine {
    start www.duckduckgo.com/?q=$args
}

function youTube {
    start https://vid.puffyan.us/search?q=$args
}

function profileFile {
    nvim "C:\Users\Sarthak.Ghimire\OneDrive - Stimwell Services Ltd/Documents/PowerShell/Microsoft.PowerShell_profile.ps1" 
}

function cdBack {
    cd .. 
}

function cdBackTwice {
    cd ../.. 
}

function treeUnix {
    tree /f
}

function gitAdd {
    param([string]$arg)
        if ($null=$arg) {
            git add . 
        } else {
            & git add $arg
        }
}

function gitCommit {
    param([string]$args)
        git commit m $args
}

function gitPull {
    git pull
}

function gitPush {
    git push
}

function gitFetch {
    git fetch
}

function gitStatus {
    git status
}
