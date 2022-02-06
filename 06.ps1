#Número de processos del sistema que comencen per la lletra w
Get-Process -Name w* | Measure-Object | Select-Object -ExpandProperty Count
