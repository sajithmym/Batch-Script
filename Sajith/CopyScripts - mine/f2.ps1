$source_folder = "$HOME\Desktop\Mohmed_Sajith\PLM Project\Excel"
$destination_folder = "$HOME\Desktop\Mohmed_Sajith\PLM Project\Text\tables\tables"

# Get the latest file in the source folder
$latest_file = Get-ChildItem -Path $source_folder | Sort-Object LastWriteTime -Descending | Select-Object -First 1

# Copy the latest file to the destination folder
Copy-Item -Path $latest_file.FullName -Destination $destination_folder

Write-Output "         The latest copied file has starting -->"
Write-Output "              ---> $($latest_file.Name) Copied successfully."