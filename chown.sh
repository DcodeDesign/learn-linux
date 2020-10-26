
# rw	        600	Le propriétaire peut lire et écrire. Le groupe et les autres ne peuvent rien faire avec le fichier.
# -rw-r-r-	    644	Le propriétaire peut lire et écrire, le groupe et les autres peuvent lire.
# -rw-rw-rw-	666	Le propriétaire, le groupe et les autres peuvent lire et écrire.
# -rwx–	        700	Le propriétaire peut lire, écrire et exécuter. Le groupe et les autres ne peuvent rien faire avec le fichier.
# -rwx-x-x	    711	Le propriétaire peut lire, écrire et exécuter. Le groupe et les autres peuvent exécuter.
# -rwxr-xr-x	755	Le propriétaire peut lire, écrire et exécuter. Le groupe et les’autres peuvent lire et exécuter.
# -rwxrwxrwx	777	Le propriétaire, le groupe et autres peuvent lire, écrire et exécuter.
# drwx–	        700	Seul le propriétaire peut lire et écrire dans ce répertoire.
# drwxr-xr-x	755	Le propriétaire, le groupe et d’autres peuvent lire le répertoire, mais seul le propriétaire peut modifier son contenu.

# « -f » – Silencieux. Signifie force . Cela ne montrera pas la plupart des messages d’erreur.
# « -v » – Vous donne un diagnostic de chaque fichier qui a été affecté par la commande.
# « -c » – Semblable à -v , mais fournira seulement des informations au cas où les changements ont été réellement effectués.

# chown [propriétaire/propriétaire du groupe] [nom du fichier]
# chown jerry:clients demo.txt