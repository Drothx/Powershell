# Le but étant de créer un script qui prend en argument le nom d’un répertoire. 
# Le script doit s’assurer que le fichier mis en argument est un répertoire, ensuite compter le nombre de répertoires, le nombre de fichiers à l’intérieur du répertoire. 
# Le script affiche ces informations.

# On demande le nom du répertoire.
$dossier1 = Read-Host "Nom du repertoire"

# On recherche dans le répertoire la présence du dossier renseigné juste avant.
$dir1 = Get-ChildItem -Path $dossier1 -Name

# On affiche le résultat d'occurence.
Write-Host "Le nombre d'occurence est:"($dir1 | Measure-Object).Count;
