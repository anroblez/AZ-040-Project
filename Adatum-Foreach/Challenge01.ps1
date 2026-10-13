# Name: Andrea Roblez
# Challenge: 01
# Purpose: Display a list of lab computers in an array
# Run on: LON-CL1

$computers = @("LON-CL1", "LON-DC1", "LON-SVR1")

foreach ($computer in $computers) { 
    Write-output "Computer: $computer"
}