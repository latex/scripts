$files1 = Get-ChildItem ./
$files2 = Get-ChildItem ../

Compare-Object $files1 $files2 | Out-GridView 
