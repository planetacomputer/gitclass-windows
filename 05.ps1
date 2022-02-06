#Crea un hashtable de nom $pops amb aquestes dades, pero els valors finals han de ser la xifra sumada al número corresponent al dia del mes del sistema.
#Aquest es l'original:
#Glasgow 976970
#Edinburgh 488610
#Aberdeen 209460
#Dundee 157690
#EXEMPLE
#Si executo el teu script el dia 22, el hashtable $pops quedarà aquestes dades (no importa ordre):
#Edinburgh : 488632
#Glasgow : 976992
#Dundee : 157712
#Aberdeen : 209482

#Retorna $pops i no escriguis res per pantalla en la versió final

$pops =@{"Glasgow"=976970; "Edinburgh"=488610;"Aberdeen"=209460;"Dundee"=157690}
$date = Get-Date
foreach($key in $($pops.keys)){
    $pops[$key] += $date.day
}

return $pops
