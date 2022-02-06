#Es passa com a argument, en la crida de l'script, un numero enter i retorna 0 si es parell o 1 si es senar
#Llegeixo primer argument
$a=$args[0]
if ($a%2 -eq 0){
    return 0
}
else{
    return 1
}
