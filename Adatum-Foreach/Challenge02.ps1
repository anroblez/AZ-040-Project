# Name: Andrea Roblez
# Challenge: 02
# Purpose: Build Domain Qualified Names
# Run on: LON-CL1

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')
$domain = 'Adatum.com'

foreach ($computer in $computers) { 
    Write-output "Computer: $computer.$domain"
}
