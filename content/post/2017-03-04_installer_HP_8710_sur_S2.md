+++
date = "2017-03-04T21:26:41+01:00"
title = "Installer imprimante HP 8710 sur S2"
type = "post"
draft = false
slug = "2017-03-04_installer_HP_8710_sur_S2"
tags = ["S2","installation"]
toc = false

+++

J'ai besoin d'imprimer sur une imprimante HP 8710 à partir de S2 (mubuntu 16.04).  
L'imprimante est reconnue mais le driver n'est pas installé.  
Il va donc falloir le faire.  

HPLIP est l'utilitaire de gestions des imprimantes HP.  

Pour savoir si l'imprimante est gérée par HPLIP il faut:

* aller sur cette [page](http://hplipopensource.com/hplip-web/supported_devices/index.html),  
* rechercher l'imprimante,
* récupérer la version minimal de HPLIP nécessaire.  

Pour la 8710, il faut la version 3.16.5 minimum.  

Pour connaître la version actuellement installée:

```
~$ dpkg -l hplip

Souhait=inconnU/Installé/suppRimé/Purgé/H=à garder
| État=Non/Installé/fichier-Config/dépaqUeté/échec-conFig/H=semi-installé/W=attend-traitement-déclenchements
|/ Err?=(aucune)/besoin Réinstallation (État,Err: majuscule=mauvais)
||/ Nom            Version      Architecture Description
+++-==============-============-============-=================================
rc  hplip          3.15.2+repac amd64        HP Linux Printing and Imaging Sys

```

C'est la 3.15.2.  
Il faut la mettre à jour.  

On regarde la dernière disponible dans le dépôt.  

```
$ apt-cache policy hplip

```

C'est la 3.16.3. Ce n'est pas suffisant.  

Reste à installer la dernière version disponible à partir du site de HP.  

Aller sur cette [page](http://hplipopensource.com/hplip-web/downloads.html).  
Il y a un bouton "télécharger" vers le bas.  
Après téléchargement, un  fichier `hplip-3.16.11.run` est présent dans `/home/xxx/Téléchargements`.  

Exécuter:

```
~$ cd Téléchargements/
~$ sh hplip-3.16.11.run
```

Répondre aux questions.  
L'imprimante est configurée à la fin de l'installation.  

