# Le but étant de créer un script qui renomme tous les fichiers « .txt » dans le répertoire courant en fichier « .dat ».

# Récupération de tous les fichiers ayant pour extension ".txt".
$textetxt = Get-ChildItem -Name *.txt


for ($line = 0; $line -lt $textetxt.Count; $line++) {

    # Cette ligne nous permets de forcer le remplacement de l'extension des fichier avec l'extension ".txt".
    Dir *.txt | Rename-Item -NewName { $_.name -Replace '.txt$','.dat' }

    # Affichage confirmation de la modifification.
    Write-Host "$textetxt bien modifié en .dat"

}
