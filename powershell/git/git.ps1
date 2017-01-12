$Token = "8eecdd3f23d07347b20c8d9161c894543309bee3";
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Header = @{
    Authorization = 'Basic {0}' -f $Base64Token;
};

$Body = @{
   location = "Ferraz de Vasconcelos";
   name = "LATex";
   company = "Fundacão Hacker Space";
   bio = "Humildão, Geek, Pai, Bacaninha";
}| ConvertTo-Json;



#Invoke-RestMethod -Headers $Header -Uri https://api.github.com/user -Body $Body -Method Patch

Invoke-RestMethod -Headers $Header -Uri https://api.github.com/projects