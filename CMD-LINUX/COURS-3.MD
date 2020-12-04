# Sytème et réseau:  Cours 3
 > https://doc.ubuntu-fr.org/permissions#:~:text=Sous%20Nautilus%20(Ubuntu)%2C%20faites,vous%20dans%20l'onglet%20permissions.&text=Pour%20le%20Propri%C3%A9taire%20et%20le,et%20%C3%A9criture%20ou%20lecture%20seule.

Les droits d'accès apparaissent alors comme une liste de 10 symboles. :

    drwxr-xr-x
    
Le premier symbole peut être « - », « d », soit « l », entres autres 
(toutes les options sur la page permissions Unix sur wikipédia)). 
Il indique la nature du fichier :
    
    - : fichier classique
    d : répertoire
    l : lien symbolique
    c : périphérique de type caractère
    b : périphérique de type bloc
    p : pipe (FIFO) "tube" ou "tuyau" en anglais ou pipeline aussi en français
    s : socket

Suivent ensuite 3 groupes de 3 symboles chacun, indiquant si le fichier 
(ou répertoire) est autorisé en lecture, écriture ou exécution. 
Les 3 groupes correspondent, dans cet ordre, aux droits du propriétaire, 
du groupe puis du reste des utilisateurs. Dans le paragraphe introductif, 
vous aurez remarqué des lettres en gras dans les termes anglais. 
Ce sont ces lettres qui sont utilisées pour symboliser lesdites permissions. 
Si la permission n'est pas accordée, la lettre en question est remplacé 
par « - ». 
Si l'on reprend les lettres données pour lecture/écriture/exécution 
(read/write/execute), nous obtenons : rwx.
        
    r = read ou lister le contenu pour un dossier
    w = write
    X = executable
    
Exemple :

    drwxr-xr-x
 
    d : c'est un répertoire.
    rwx pour le 1er groupe de 3 symboles : son propriétaire peut lire, écrire et exécuter.
    r-x pour le 2e groupe de 3 symboles : le groupe peut uniquement lire et exécuter le fichier, sans pouvoir le modifier.
    r-x pour le 3ème groupe de 3 symboles : le reste du monde peut uniquement lire et exécuter le fichier, sans pouvoir le modifier.
    
En pratique, en exécutant la commande suivante :

    ls -l

on obtient la liste du contenu du répertoire courant, par exemple :

    on obtient la liste du contenu du répertoire courant, par exemple :
    
    drwxr-xr-x   6 cyrille cyrille     4096 2008-10-29 23:09 Bureau
    drwxr-x---   2 cyrille cyrille     4096 2008-10-22 22:46 Documents
    lrwxrwxrwx   1 cyrille cyrille       26 2008-09-22 22:30 Examples -> /usr/share/example-content
    -rw-r--r--   1 cyrille cyrille  1544881 2008-10-18 15:37 forum.xcf
    drwxr-xr-x   7 cyrille cyrille     4096 2008-09-23 18:16 Images
    drwxr-xr-x   2 cyrille cyrille     4096 2008-09-22 22:45 Modèles
    drwxr-xr-x 267 cyrille cyrille    20480 2008-10-27 22:17 Musique
    drwxr-xr-x   2 cyrille cyrille     4096 2008-09-22 22:45 Public
    drwxr-xr-x   2 cyrille cyrille     4096 2008-10-26 13:14 Vidéos

On retrouve dans la première colonne le groupe de 10 caractères permettant de connaître les droits pour chaque fichier.

Ainsi, pour le fichier forum.xcf, on a :

    -rw-r--r--
    
 - Le 1er caractère est - ⇒ c'est un fichier.
 - Le premier groupe de 3 caractères est rw- ⇒ le propriétaire a le droit de lecture et écriture (mais pas d'exécution) sur le fichier.
 - Les 2 groupes suivants sont r-- ⇒ Les utilisateurs du groupe et les autres n'ont que le droit de lecture (pas d'écriture, ni d'exécution) .
    
    
    R = 4
    W = 2
    X = 1
    - = 0
    
    --- 0 0
    -wx 3 11
    -w- 2 10 
    r-- 4 100
    rw- 6 110
    rwx 7 111
   
    r-x 5 101

    o User (owner)
    g Group
    a All
    
    chmod -o+r [file]
    chmod -g-w [file]
    
    chown [user] [file]
    chown :[goup] [file]
    chown [user]:[goup] [file]
    
    tree -ugp
    
    ./commande.sc => execute le script
    
    stat [file]
    
# Droit Spéciaux

                    Set UID             Set GID             Sticky Bit   
                      
        file        Droit Proprio       Droit du groupe     Ce met en RAM pour une utilisation rapide (Deprecied)
        
        folder      - n'existe pas      Héritage de droit   Suppression Proprio
                                        du groupe dans 
                                        lequel il se 
                                        trouve
        
        Qui         Proprio             Proprio             Root
        Marquage    s                   s                   t       => rw(x)s-rw(x)s-rw(x)t
        valeur      4                   2                   1       
                    4(660)              2(444)              1(777)       
        
        exemple     chmod 4660 [file] = chmod +4000 [file]
        
        etc/passwd => on retrouve les users
            mitch:x:1000:1000 
                x => protéger par un pwd
                1000 => UID
                1000 => groupe
        
        etc/group => on retrouve les groupes
                    mitch:x:1000:
                        x => protéger par un pwd
                        1000 => UID
        
#Autre commande

    su - micth
    mot de passe:
    who
    whoami
    logname
    groups
    id
    gshadow
    ls -l | less
                       
#Créer un groupe
    
      groupadd test
      cat etc/group
      man usermod

      usermod -aG [new group] [user]
      usermod -aG [new group],[new group],[new group]  [user]
      gpasswd -a [user] [group]
      gpasswd -M [user],[user],[user] [group]


    
## Création du fichier de bienvenu
    touch [name_file]
    mkdir [name_folder]
    
## Création des users
> https://doc.ubuntu-fr.org/adduser

    adduser [name] [group]
    userdel [name]
    userdel -r [name]
    
## Création des groupes

     groupadd [name_group]
     sudo adduser [user_name] [new_group]

## Se connecter en tant que
    su - [name_user] 

