#Pren el string "supercalifragilisticoespialidoso" i retorna un altre amb les lletres ordenades alfabéticament
#Has de tenir en compte que un string es pot passar a array... i la inversa. Investiga
$Inputstring ="supercalifragilisticoespialidoso"
$CharArray =$InputString.ToCharArray()
$b = $CharArray|sort
return $b -join ""
