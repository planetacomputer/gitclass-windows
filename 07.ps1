#Nelson Mandela va néixer el 18 juliol de 1918
#Arrodoneix a enter el nombre de dies que han passat des de la seva data de naixement.
#Desa'l a la variable $dies i retorna-la
#Hauràs de fer servir un objecte TimeSpan
[datetime]$born = "18 July 1918"
$today = Get-Date
$dies=[math]::Round(($a-$born).TotalDays)
return $dies
