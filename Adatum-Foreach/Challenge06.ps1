# Name: Andrea Roblez
# Challenge: 06
# Purpose: Flag local services for review 
# Run on: LON-CL1

$services = @('EventLog', 'W32Time', 'Spooler')
$reviewCount = 0 

foreach ($ServiceName in $Services) {
    $Service = Get-Service -Name $ServiceName 

    if ($Service.Status -eq 'Running') {
        Write-Output "OK:$($Service.Name)"
    }
else {
        Write-Output "REVIEW:$($Service.Name) - $($Service.Status)"
        $reviewCount = $reviewCount + 1
    }
}
Write-Output "REVIEW Total: $reviewCount"