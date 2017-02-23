+++
date = "2017-02-21T21:44:12+01:00"
title = "Mise en place d'un blog avec hugo"
slug = "hugo-mise-en-place"
draft = true
toc = true
type = "post"
tags = ["hugo", "blog Notes"]

+++

# Présentation

Hugo est un générateur de site statique écrit en Go.  
Son gros avantage est sa facilité d'installation.  

Par exemple, il n'est pas nécessaire d'avoir python d'installer sur le poste pour pouvoir l'utiser.

Cette page explique les étapes suivies pour l'installer.


# Installation

S'inspirer de https://www.digitalocean.com/community/tutorials/how-to-install-and-use-hugo-a-static-site-generator-on-ubuntu-14-04

- Aller sur la [page de téléchargement](https://github.com/spf13/hugo/releases).  
- Récupérer l'archive correspondant à:  
	- la dernière version.  
	- l'os.

## Sous S2 - Ubuntu

- Récupérer `hugo_0.18.1-64bit.deb`.
- installer le package.  

```
sudo dpkg -i hugo*.deb
```
- Vérifier l'installation

```
~$ hugo version
Hugo Static Site Generator v0.18.1 BuildDate: 2016-12-30T11:05:34+01:00
```

## Sous W1 - Windows 7

- Récupérer hugo_0.18.1_Windows-32bit.zip.  
- Dézipper l'archive.
- Mettre le fichier hugo.exe dans le path.
	- Pour W1, copier dans `c:\_me\appPortables\`
	- Copier un raccourcis dans`c:\_me\bin\`
- Vérifier l'installation.

```
c:\ hugo version
Hugo Static Site Generator v0.18.1 BuildDate: 2016-12-30T11:05:34+01:00
```


# Création d'un site

## Création de la structure
## Création d'un premier post
## Mise en place d'un theme

# Futurs posts
- Fichier de configuration
- Modification du thème
- Gestion des liens
- Déploiement
