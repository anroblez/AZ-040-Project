# Name: Andrea Roblez
# Challenge: 03
# Purpose: Inspect Local Services
# Run on: LON-CL1

$services = @('EventLog', 'W32Time', 'Spooler')

foreach ($ServiceName in $Services) {
    $Service = Get-Service -Name $ServiceName 
    Write-Output "$($Service.Name): $($Service.Status)"
}
