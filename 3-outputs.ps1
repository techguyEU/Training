#Variable output i consolen.
$var_UFname = "TOM"
write-host "You have typed in $var_UFname" -ForegroundColor Cyan

#Addera värdet från en variable till en txt fil.
Add-Content -Path .\path.txt -Value "$var_UFname"

#Addera flertalet värden till en CSV fil med flera tabeler.
Add-Content -Path .\Output\path.csv -Value "PETE; GREEN; Support; IT; DC"
Import-CSV -Path .\Output\path.csv -Delimiter ";" | Format-Table

#Ta data från kommando och exportera det till CSV
Get-Process | Export-Csv -Path .\Output\get-process.csv -Delimiter ";"

#Vill man presentera CSV data i consolen använd då detta.
$var_IMCSV = Import-Csv -Path .\Output\get-process.csv -Delimiter ";" 
$var_IMCSV | Format-Table

Start-Process excel .\Output\get-process.csv


#Formatera din data själv med hjälp av import-csv och egen skapad header.
$var_IMCSV = Get-Process

foreach ($line in $var_IMCSV) {
    $LCPU = ($line.CPU / 100).tostring("P")
    if ($LCPU -cge "5") {
        $IMCData = "$($line.Name);$LCPU;$($line.Path)" #Samlar in den datan du vill samla på dig.
        Add-Content -Path .\Output\New_data.csv -Value "$IMCData" #Skriver in samlad data till filen new_data.csv
        
    
    }

}

Clear-Host
$IMCData_in = Import-Csv -Path .\Output\New_data.csv -Delimiter ";" -Header "Name","CPU","Path"
$IMCData_in 
Remove-Item -Path .\Output\New_data.csv -Confirm:$false

