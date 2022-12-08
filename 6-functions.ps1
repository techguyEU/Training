<#
Functions kod skriver man alltid först i skriptet så det laddas in innan sjävlaste skriptet startas.
Sedan kan man trigga Functionen när som och hoppa runt i skriptet.

https://learn.microsoft.com/sv-se/powershell/scripting/learn/ps101/09-functions?view=powershell-7.2
#>

Function valfrittnamn {
<# Lägg in skript data som du vill ska triggas när man anroppar valfrittnamn #>
clear-host #rensa skärmen
Write-host "Detta är en skapad funktion som triggas när du använder valfrittnamn i din skript eller i konsolen" -ForegroundColor Cyan
ls

}

valfrittnamn
