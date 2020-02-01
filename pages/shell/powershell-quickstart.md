PowerShell Quickstart
=====================

### Run

Source a script [(read also)](https://stackoverflow.com/a/27138623):

    . D:\scripts\setup-env.ps1
    
Run a script [(ref)](https://stackoverflow.com/a/18537263):

    D:\scripts\start.ps1
    & "D:\scripts\start services.ps1"
    & "$Env:ScriptFolder\start.ps1"

### Pipe

    Get-Service | ForEach-Object {$_.Name}
    Get-Service | Where-Object {$_.Name -like "net*"}
    

### Try-catch:

    try
    {
        Get-WindowsImage -ImagePath E:\images\c.wim
    }
    catch
    {
        $message = "TRAPPED: {0}: '{1}'" -f ($_.Exception.GetType().FullName), ($_.Exception.Message)
        Write-host $message
    }

-------------------------------------------------------------------

### File, Directory and Path

Current script location [(ref)](https://stackoverflow.com/q/5466329):

    write-output $PSScriptRoot
    write-output $PSCommandPath
    write-output $MyInvocation.MyCommand.Path
    write-output $MyInvocation.InvocationName
    
Special folders [(ref)](https://stackoverflow.com/a/31747246):

    $UserDesktop = [Environment]::GetFolderPath("Desktop")   
    $PublicDesktop = ([Environment]::GetEnvironmentVariable("Public")) +9 "\Desktop"
    
Test existence:
    
    [System.IO.File]::Exists($path)
    Test-Path $path -PathType leaf
    

Cmdlets for common files and dirs operations (creating, copying, moving, renaming, etc.):

* New-Item
* Copy-Item
* Move-Item
* Rename-Item
* Get-Content
* Test-Path


