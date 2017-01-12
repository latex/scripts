#


#comparar dois diretorios e compiar arquivos faltando
#$backup = "D:\RESTORE_HGE\Data\Shares\Projetos\SESAU_HGE\"
#$prod = "D:\Data\Shares\Projetos\SESAU_HGE\" 

$backup = "D:\Projeto\scripts\powershell\pasta1\"
$prod   = "D:\Projeto\scripts\powershell\pasta2\"

$folder1 = Get-ChildItem -Recurse $backup -Filter *.txt

foreach($file in $folder1)
    {

        If (Test-Path ($prod + $file.Name)){
        #$file + ",ok"|Add-Content .\verificado.csv
        Write-Host "existe"
    }
    Else
    {
        if(Test-Path './coped.csv'){
        
           
           # Move-Item -Path './coped.csv' -Destination './coped.old'

        }
       else{
       # New-Item -Path './coped.csv' -ItemType "file"
       }
          Write-Host "nao existe"
          $origen = $backup + $file.Name
          $destiny = $prod + $file.Name
          Copy-Item $origen  $destiny
         #  $file|Add-Content .\coped.csv
  
   }
}