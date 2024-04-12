$source_folder = "$HOME\Desktop\Mohmed_Sajith\PLM Project\Excel"
$destination_folder = "$HOME\Desktop\Mohmed_Sajith\PLM Project\Text\tables\tables"

# Get today's date
$today_date = (Get-Date).Date

# Get the files in the source folder that were created today
$files = Get-ChildItem -Path $source_folder | Where-Object { $_.CreationTime.Date -eq $today_date }

# Copy the files to the destination folder
if (-not (Test-Path -Path $destination_folder)) {
    New-Item -ItemType Directory -Path $destination_folder | Out-Null
}

Write-Output "         The process of copying today's files to the destination has starting -->"
$files | ForEach-Object { 
    if ($_ -isnot [System.IO.DirectoryInfo] -and $_.FullName -ne (Join-Path -Path $destination_folder -ChildPath $_.Name)) {
        Copy-Item -Path $_.FullName -Destination $destination_folder 
        Write-Output "              ---> $($_.Name) Copied successfully."
    } else {
        Write-Output "              - $($_.Name) is already present in the destination folder."
    }
}
Write-Output ""