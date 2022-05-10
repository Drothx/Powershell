# Le but étant de créer un script qui prend deux répertoires comme paramètres
# a. Le script vérifie que les deux répertoires existent puis retourne un fichier « .dat » contenant les fichiers partagés et non partagés entre les deux répertoires.

# On demande à l'utilisateur de renseigner les deux dossiers concernés.
$Directory1 = Read-Host "Premier dossier"
$Directory2 = Read-Host "Second dossier"


# Récupération de l'emplacement pour le premier dossier.
$dir1 = Get-ChildItem -Path $Directory1 -Name

# Récupération de l'emplacement pour le second dossier.
$dir2 = Get-ChildItem -Path $Directory2 -Name

# Vérification pour le dossier 1.
for ($l1dir = 0; $linedir1 -lt $dir1.Count; $l1dir++) {


   # Vérification pour le dossier 2.
    for ($l2dir = 0; $l2dir -lt $dir2.Count; $l2dir++) {

        # Si occurences trouvées alors message ci-dessous.
        if ($dir1[$l2dir] -eq $dir2[$l2dir]) {


            # Affichage des occurences trouvées.
            Add-Content -Path "folder_en_commun.dat" -Value ($dir1[$l1dir1], "sont en commmuns !"       )
        }
    }


} 
