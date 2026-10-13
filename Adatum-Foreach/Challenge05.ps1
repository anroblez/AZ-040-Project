# Name: Andrea Roblez
# Challenge: 05
# Purpose: Read the Domain Computer Inventory 
# Run on: LON-CL1

Import-Module ActiveDirectory

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')

foreach ($computer in $computers) {
        $adComputer = Get-ADComputer `
                -Identity $computer `
                        -Server LON-DC1.Adatum.com `
                                -Properties OperatingSystem

                                    Write-Output "Name: $($adComputer.Name)"
                                        Write-Output "DNS Host Name: $($adComputer.DNSHostName)"
                                            Write-Output "Operating System: $($adComputer.OperatingSystem)"
                                            }
                                            `
}