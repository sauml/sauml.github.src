+++
date = "2015-12-16T22:48:34+01:00"
title = "Création du blog-notes avec Pélican"
slug = "2015-12-16_pelican_creation_site"
draft = false
toc = true
tags = [ "pelican", "blog" ]

+++

# Introduction

La création de la structure du site est détaillée ici: [Installation de Pélican]({{< ref "2015-12-15_pelican_installation.md" >}})

Cet article concerne la création de ce blog-notes.

## Création du site

```
C:\Applis\Wiki\pelican\pelican>pelican-quickstart
Welcome to pelican-quickstart v3.6.3.

This script will help you create a new Pelican-based website.

Please answer the following questions so this script can generate the files
needed by Pelican.

> Where do you want to create your new web site? [.] sauml.bitbucket.org
> What will be the title of this web site? Mes Notes
> Who will be the author of this web site? sauml
> What will be the default language of this web site? [en] fr
> Do you want to specify a URL prefix? e.g., http://example.com   (Y/n)
> What is your URL prefix? (see above example; no trailing slash) http://sauml.b
itbucket.org/
> Do you want to enable article pagination? (Y/n)
> How many articles per page do you want? [10]
> What is your time zone? [Europe/Paris]
> Do you want to generate a Fabfile/Makefile to automate generation and publishi
ng? (Y/n)
> Do you want an auto-reload & simpleHTTP script to assist with theme and site d
evelopment? (Y/n)
> Do you want to upload your website using FTP? (y/N)
> Do you want to upload your website using SSH? (y/N)
> Do you want to upload your website using Dropbox? (y/N)
> Do you want to upload your website using S3? (y/N)
> Do you want to upload your website using Rackspace Cloud Files? (y/N)
> Do you want to upload your website using GitHub Pages? (y/N)
Done. Your new project is available at C:\Applis\Wiki\pelican\pelican\sauml.bitb
ucket.org
```

# Création des lanceurs pour windows

Dans le répertoire sauml.bitbucket.org
Créer les fichiers suivants:

* `pelrun.bat` pour générer le contenu du site de debug dans le dossier output

        pelican content --debug --autoreload  --output output --settings pelicanconf.py

* `pelserve.bat` pour lancer le site de debug

        pushd output
        python -m pelican.server
        popd

* `pelpub.bat` pour générer le site de production dans le dossier output

        pelican content --output output --settings publishconf.py

Pour développer le site en local, lancer:
```
sauml.bitbucket.org>start pelrun.bat
sauml.bitbucket.org>start pelserve.bat
```
Le site est disponible à l'url [http://127.0.0.1:8000](http://127.0.0.1:8000)

# Configuration

* Dé-commenter `RELATIVE_URLS = True` dans `pelicanconf.py`
* Mettre `DELETE_OUTPUT_DIRECTORY = False` dans `publishconf.py` pour ne pas supprimer le dépôt git dans output.

## Thèmes

Récupérer les thèmes existants:
```
pelican>git clone https://github.com/getpelican/pelican-themes.git
```
Définir le thème choisi dans pelicanconf.py
```
THEME = "../pelican-themes/foundation-default-colours"
```

## Plugins

Pour les récupérer
```
pelican>git clone https://github.com/getpelican/pelican-plugins.git
```
Puis dans pelicanconf.py
```
PLUGIN_PATH = '../pelican-plugins'
```
