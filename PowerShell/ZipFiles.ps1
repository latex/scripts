function AddZip($zipfile,$sourcefile)
    {
        
        Copy-toZip $sourcefile -ZipFile $zipfile
        Remove-item $sourcefile
        Write-Host $sourcefile
        
    }