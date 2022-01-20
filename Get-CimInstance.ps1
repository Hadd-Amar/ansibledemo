Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | Measure-Object -Property FreeSpace,Size -Sum | Select-Object -Property Property,@{'Name' = 'FreeSpace (GB)'; Expression= { [int]($_.Sum / 1GB) }}