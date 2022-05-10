# Le but étant de créer un script 


$adp = 0
for ($a = 0; $a -lt 5; $a++) {

# Nous demandons le username de l'utilisateur.
$username = Read-Host "Votre Username" 

# Nous demandons le username de l'utilisateur.
$credentials = Read-Host "Votre mot de passe" 


Write-Host $credentials
$nbline = (Get-content "User.txt").Length

    

for($i = 0 ; $i -lt $nbline;$i++)
{
    $usernamelog  = (Get-content ("user.txt"))[$i]
    if ($usernamelog -eq $username){
        $adp = 1


        $passlog  = (Get-content ("pass.txt"))[$i]

        # Traçage de l'authentification avec apparition de l'heure.
        $time = get-date

        # Cas où Authentification validée.
        if ($passlog -eq $credentials) {
            Write-Host "Authentification réussie ! Bienvenue sur votre compte !"

            # Ajout de la ligne dans le fichier de logs.
            Add-Content -Path "$username.txt" -Value "Votre connexion avec le compte: $username à été réalisé à $time"
        }

        # Cas où Authentification erronée.
        else {
            Write-Host "Erreur avec le nom d'utilisateur et/ou le mot de passe renseigné !!"

            # Ajout de la ligne dans le fichier de logs.
            Add-Content -Path "$username.txt" -Value "Erreur de connexion pour le compte $username à $time"
        }
    }
    elseif ($usernamelog -gt $username) {
        break
    }
    
}
}

# Si Authentification mal renseignée/erronée.
Write-Host "Le nombre maximum de tentatives de connexion est atteint !!"

if ($adp -eq 0) {
Write-Host "Ci-joint les nouveaux elements de connexion dans le cas où vous souhaiter vous enregistrer dans la base de donnees:"


$Npass = -join (1..30 | for {[char]((89..109) + (35..68) | Get-Random)})

Write-Host $username
Write-Host $Npass

# Demande de validation après proposition des credentials.
$reponse = Read-Host "Ce mdp vous convient ? (y/n)"

# Dans le cas où utilisateur répond "y", alors ajout des credentials dans les fichiers de référence.
if ($reponse -eq "y")  {

    # Ajout du nouveau username.
    Add-Content -Path "User.txt" -Value $username

    # Ajout du nouveau credential.
    Add-Content -Path "pass.txt" -Value $Npass

    Write-Host "Ajout des nouveaux élements de connexion reussi !"
    
}
}
