#El fitxer usuarios.csv conté una taula amb usuaris i els seus corresponents passwords.
#Tot fent servir Import-Csv, llegeix aquest fitxer i itera'l per crear cada usuari amb el seu password.
New-LocalGroup usuarios -Confirm:$false
$usuarios= Import-Csv -Path .\usuarios.csv
foreach ($i in $usuarios){
  $clave= ConvertTo-SecureString $i.contra -AsPlainText -Force
  New-LocalUser $i.nombre -Password $clave -AccountNeverExpires -PasswordNeverExpires
  Add-LocalGroupMember -Group usuarios -Member $i.nombre -Confirm:$false
}
