Install Doc : https://www.debian.org/releases/stable/i386/

Command Linux 

```
 # current working directory
 root@debian:~# Pwd

 # help  
 root@debian:~# man [cmd]

 #short help
 root@debian:~# [cmd] —help

 #clean screen
 root@debian:~# clear

```

changer de terminal 
```
CTRL+ALT+F1 / F2 / F3
```

Notations :
```
 root@debian:~# Is -a -t -h
 root@debian:~# Is -ath

 root@debian:~# Is --help
 root@debian:~# Is -a
 root@debian:~# is --all
```

Ajouter/supprimer un utilisateur
```
root@debian:~# adduser [name] 
root@debian:~# deluser --remove-home [name] 
```

Changer un mot de passe 
```
# permet de changer le mot de passe courant
root@debian:~# passwd

# permet de changer le mot de passe d'un utilisateur
root@debian:~# passwd [name user]
```

IP de la machine
```
root@debian:~# hostname -I
root@debian:~# apt-get update
root@debian:~# apt-get upgrade
root@debian:~# apt-get install
root@debian:~# apt-get install openssh-server
```
remarques :

tabulation x2 propose des commands
```
 root@debian:~# m 

man
mandb
manpath
...
```

flèche haut permet de récupérer les commandes tapées
