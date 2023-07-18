# PowerShell Printer Listing Script

# Get the list of installed printers
$printers = Get-WmiObject -Query "Select * From Win32_Printer"

# Check if any printers are installed
if ($printers.Count -gt 0) {
    Write-Host "Installed Printers:"
    Write-Host "==================="

    # Loop through each printer and display its properties
    foreach ($printer in $printers) {
        Write-Host "Printer Name: $($printer.Name)"
        Write-Host "Printer Status: $($printer.Status)"
        Write-Host "Printer Port: $($printer.PortName)"
        Write-Host "Driver Name: $($printer.DriverName)"
        Write-Host "--------------------"
    }
} else {
    Write-Host "No printers are installed on this computer."
}
