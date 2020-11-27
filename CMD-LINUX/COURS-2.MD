manuel : 
    
    manpagesfr.free.fr

# Aide
```
apropos [cmd]
```

# voir les commandes tapées 
```
history
```

# variables d'envirennements
```
echo $PATH
echo $USER
echo $HOME
echo $LOGNAME
echo $LANGUAGE
echo $RANDOM
```

# passer d'un user au root
```
su -
```

# Quitter
```
exit
```

# Créer un repertoire
```
pwd
mkdir [nameFolder]
```

# Naviguation
```
cd 
cd ..
cd [folder]
cd /home/luc
cd / (racine root)
cd /home (chemin absolu))
```
```
ls 
ls --help | more
ls --help | less 
ls -a
ls -l
    drwr-xr-x 2 micth (goupe) mitch (groupe) 4096 (bit) nov 20 (date crea) 19:25 (dernière modif) commandes (nom fichier)
    -rw-r--r-- 1  micth (goupe) mitch (groupe) 0 (bit) nov 20 (date crea) 19:25 (dernière modif) file (nom fichier)
    
    d = directory
    - = fichier
    l = lien
    c = fichier caractère (buffer)
    b = block
    p = pipe (fichier d'échange de données entre processus)
    s = pipe (trame, reseau)

```

# Editer un fichier
```
cat [file.extcd]
```

# Créer des ALIAS
```
alias [name]='ls -a /home/'
```
remarque :
une fois déconnecté les alias disparaissent
pour les enregistrer un faut les ecrire dans le fichier ba
Enregister des ALIAS dans le bash)

# Qui est logger ?
```
who
```

# Créer un fichier
```
touch fichier(.txt)
```

# ecrit coucou dans un nouveau fichier fic3
```

echo coucou > fic3
echo Michier >> fic3
```
```
export PATH=$PATH:
```

# install Tools tree
```
su - 
apt-get install tree
```

# date
```
date
```

# calendrier
```

cal
```

# Liens (symbolique)
```
ln -s [file] [nameLink]
ln -S /home

echo "Salut" >> [fichier]
```

# Liens (dur / physique)
```
ln fichier fichierdur2
ls -l 
     -rw-r--r-- 4*
```
*le chiffre 4 indique qu'il y a 4 fichiers 
avec le même contenu mais 4 noms differents

# Suppression 
```
rm [file]
rm -R [folder]
```

# Chercher une commande
```
whereis adduser
```

# Déplacer un fichier
```
mv [nameFile] [nameFolder]
```

# Copier un fichier
```
cp [nameFile] [nameFolder]
```


# Affiche les tailles de fichier et dossiers du dossier courant
```
du -h
```


remarque :

linux est case sensitive
nom d'un fichier 255 caractères


les Dossiers principaux de Linux
```
cd /
```
- bin = folder ou l'on trouve les commandes utilisateurs
- boot = fichier d'installation de linux
- dev = toutes les devices
- etc = fichiers de config linux
- lib65 = librairie (dll) -> depencies
- lost+found =
- mnt = fichier de relation avec des devices ecterne
- opt = apt-get
- root = 
- sbin = commandes uniquememnt du root
- tmp = fichiers temporaires
- var = fichiers lock et fichiers qui sont modifier souvent

