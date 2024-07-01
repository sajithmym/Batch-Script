$source_folder = "F:\\Testing\\1.app test"
$destination_folder = "F:\\Testing\\copy"

# Get the latest file in the source folder
$latest_file = Get-ChildItem -Path $source_folder | Sort-Object LastWriteTime -Descending | Select-Object -First 1

# Copy the latest file to the destination folder
Copy-Item -Path $latest_file.FullName -Destination $destination_folder

Write-Output "         The latest copied file has starting -->"
Write-Output "              ---> $($latest_file.Name) Copied successfully."