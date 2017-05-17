Get-ChildItem -Path "." | Where-Object{Write-Host $_.DirectoryName}
