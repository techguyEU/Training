<#
Variabel namn är något du helt själv bestämmer,
men en tumregel är att det bör va relativt lätt att förstå va det används till och i vad för syfte.

Om en variabel innehåller fler tabeller data så kan man ta ut den genom att använda sig av $variabelnamn.namnpåtabel

#>

#Enkla exempel på  text variabler.
$var_exempel01 = "Valfri text"
#[string] definerar innehållet i variabeln, detta behövs inte defineras i många fall men i bland så.
[string]$var_exempel01 = "Sträng med text och siffror"
[int]$var_exempel01 = 1.9 #Här fungerar endast siffror
$var_exempel01
#Resultatet av ett kommando, variabel exp.


$var_exempel02 = Get-Process
#Få ut data ur denna multidata variabel och annat smått och gott.
$var_exempel02 #Presenterar innehållet i en variable
$var_exempel02.Name  #Listar allt under Header namnet "Name"

Write-host "$($var_exempel02.Name) , $($var_exempel02.CPU) hej hej" #Se hur jag kapslar in variablen i en $() bubbla variablen ligger innan för ""

$var_exempel02.Name | Where-Object {$_ -clike "*host*"} #Listar namn i variablen samt sorterar ut dem du önskar se.

#Använd Select-Object * för att få fram all information eller subträd i en multi data variable.
$var_exempel03 = Get-Process -Name Chrome
$var_exempel03 | Select-Object *

#Variable array
$var_array01 = @('noll','ett','två','fyra eller nej tre','Ja ni fattar') #Detta är en array med fem värden.
$var_array01 #Skriver ut arrayen som en lista.
$var_array01[3] #Skriver ut värdet som har plats nr 3 i arrayen. Notera att arrayen startar på 0 så värde 3 är värde två :D
Write-Host "Det är kul med nummer $($var_array01[4])"
$var_array01.Count


#Två sätt att formatera en nestlad array.
$var_array02 = @(@(1,2,3),@(4,5,6),@(7,8,9))
$var_array02  = @(

        @(1,2,3),

        @(4,5,6),

        @(7,8,9)

    )
#Hämta data från en nestlad array
    $var_array02[0]
    $var_array02[0][2]
