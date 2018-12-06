$disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object Size, FreeSpace
Write-Host ("{0}GB" -f [math]::truncate($disk.Size / 1GB))
