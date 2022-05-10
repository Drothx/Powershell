# Le but étant de créer un script qui affiche son propre nom et tous ses arguments.
# a. EX : ./monscript.py hello world
# b. Affiche : « Nom du script : monscript.py »
# c. Affiche : « mes arguments : hello world »

# Cette ligne nous permet d'afficher dans un premier temps le nom du script exécuté.
Write-Host 'Le nom du script est :' $MyInvocation.MyCommand.Name

# Cette ligne nous permet de d'afficher le/les argument(s) présent(s) à la suite du nom du script.
Write-Host 'Mon/mes argument(s) est/sont :' $args
