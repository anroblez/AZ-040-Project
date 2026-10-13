# Name: Andrea Roblez
# Challenge: 04
# Purpose: Count Local Services
# Run on: LON-CL1

$services = @(get-service)
$total = 0

foreach ($service in $services) {
    Write-Output $service.Name
    $total = $total + 1 
}

Write-Output "Total services: $total"
$total 