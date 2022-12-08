#Begärn input data från den som kör skriptet.
$var_UFname = Read-Host -Prompt "Input Users firstname"
$var_UFname

#Enkel inhämtning av data från txt fil.
$var_AddCont = Get-content -Path .\Output\path.txt
$var_AddCont

#Mer avancerad inhämtning av data från multi value csv fil.
$var_ImCSV = Import-CSV -Path .\Output\Path.csv -Delimiter ";" -Header "Name","Group","Dept","Server","X"
#$var_ImCSV | Where-Object {$_.Name -eq 'Chris'}
$var_ImCSV

#Starta editor program, skapa eller skriv till befintlig fil när den sedan sparas och stängs går skriptet vidare.
Start-Process notepad .\Output\input.txt -Wait
Clear-Host
$var_Importdata = Import-Csv -Path .\Output\input.txt -Delimiter "," -Header "first","second","third"
$var_Importdata
Write-Host "kör med dessa settings - delete data eller inte"
Write-Warning -Message "Gå vidare?" -WarningAction Inquire









