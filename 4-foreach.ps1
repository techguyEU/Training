<#

Foreach används när du vill hämta in värden och processera dem.
Typ data från en lista / Fil.

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_foreach?view=powershell-7

#>

$value_list = Get-Process | Where-Object {$_ -clike "*chrome*"}

#$value_list = get-content -path .\output\path.txt #Hämtar in lista av data från fil

ForEach($value_line in $value_list) { #Processerar data rad för rad i från variablen $value_list, rad datan ligger i $value_line.
    add-content -path .\Output\col_data.csv -value "$($value_line.ProcessName),$([int]$value_line.CPU),$($value_line.Path)" 

}

$col_data_out = Import-Csv -Path .\Output\col_data.csv -Header "Name","CPU","Path" -Delimiter ","
$col_data_out
Remove-Item -Path .\Output\col_data.csv -Force -Confirm:$false
