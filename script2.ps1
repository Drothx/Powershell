# L'objectif étant de créer un script qui affiche le contenu de la variable USERDOMAIN. Que contient-il ?

# Nous commençons par invoquer le nom du script actuel.
Write-Host 'Nom du script :' $MyInvocation.MyCommand.Name

# On affiche le sarguments renseignés par l'utilisateur.
Write-Host 'Message actuel:' $args
