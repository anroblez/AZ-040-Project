$computer = "LON-SVR1"
$os =Get-cimInstance -classname Win32_operatingSystem -ComputerName $computer

$cDrive = Get-Ciminstance -ClassName Win32_LogicalDisk -ComputerName $computer -Filter "DeviceID='C:'"

$uptime = $os.LocalDateTime - $os.LastBootUpTime

$info = [pscustomobject]@{
    ComputerName = $computer
    OS = $os.caption
    LocalDateTime = $os.LocalDateTime
    LastBootUpTime = $os.LastBootUpTime
    CDriveSizeGB = [math]::Round($cDrive.Size / 1GB,2)
    CDriveFreeSpaceGB = [math]::Round($cDrive.FreeSpace / 1GB,2)
    UptimeHours = [math]::Round($uptime.TotalHours,2)
} 
Write-Output $info 