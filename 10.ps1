#La invocació a aquest programa genera un array de nom $array format per dos números naturals: el primer està format pel nombre de paràmetres passats, i el segon per un número natural que és la mitjana arrodonida dels números passats per paràmetre.
#Ex .\10.ps1 4 5 6
#generarà $array=@(3,5)
[int]$mitjana
[int]$suma = 0
foreach ($i in $args){
    try{
        $entero = [int]$i
    }
    catch{
        throw Write-Output "Introdueix enter" -ErrorAction Continue
    }
    $suma = $suma + $i
}
$average = [math]::Round($suma/$args.Count)
$array = @($args.Count, $average)
return $array
