
$strFileName= Get-Content ./caminho.txt
New-Item -Path './verificado.csv' -ItemType "file"
foreach($file in $strFileName)
{

If (Test-Path $file){
   $file + ",ok"|Add-Content .\verificado.csv
}Else{
   $file + ",false"|Add-Content .\verificado.csv
}
}