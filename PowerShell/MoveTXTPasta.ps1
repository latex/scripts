#
# Script.ps1
#

Get-ChildItem  -recurse -dir -Path ".\"| ForEach-Object{
	 $nome = $_.BaseName;
	 $a = $nome.ToString();
	if( $a  -eq "txt")
	{
		
		## Remove the original  root folder
        Write-Host "Encontrado " $_.FullName
		
        $dest = Split-Path(Split-Path  $_.FullName -parent) -parent
        
        Write-Host "Movendo para" $dest
       write-host " "

        $souce = $_.FullName
        Get-ChildItem -Filter *.txt -Path $souce | ForEach-Object{
            Write-Host "copiando " $_.Name "para " $dest
            Copy-Item -Filter *.txt -Force -Path $_.FullName -Destination $dest

        }
        
		#Copy-Item -Filter *.txt -Recurse -Force -Path $_. -Destination $dest
		#Remove-Item -Path $_.FullName -Force -Recurse 
	}
	#cria pasta
	#move pasta 

}