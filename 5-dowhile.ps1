<#
Do while gör en grej medans den väntar på att ett värde ska ändras i satt variable.
Exemplet nedan väntar in status "Started" från vald serivce och så länge som den inte är "started"
Så stannar skriptet i sin loop, när väl statusen går till "Started" så går skriptet vidare bort från do while loopen.

#>
Clear-Host

$service_name = "autotimesvc"

Write-host "Starting Service $service_name"
Start-Service -Name $service_name
write-host "Chaning setup" -NoNewline -ForegroundColor Cyan

do {

    $a = (Get-Service -Name $service_name).Status #Fånga upp Statusen från BEService, denna status hämtas in varje sekund tills statusen stämmer över med det du önskar.
    Write-host "." -NoNewline
    Start-Sleep -Seconds 1

} while ($a -clike "*Stopped*") #Värdet du önskar att variablen ska ha innan skriptet fortsätter.

write-host ""
write-host "Service started!"
Get-Service -Name $service_name
Stop-Service -Name $service_name -Force




