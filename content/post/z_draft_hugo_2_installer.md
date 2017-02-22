+++
type = "post"
draft = true
slug = ""
date = "2017-02-22T22:38:10+01:00"
title = "z_draft_hugo_2_installer"
tags = ["one","two"]
toc = true

+++

# Créer un nouveau site
Créer la structure

```
$ hugo new site sauml.github.io

Congratulations! Your new Hugo site is created in /xxx/xxx/sauml.github.io.

Just a few more steps and you're ready to go:

1. Download a theme into the same-named folder.
   Choose a theme from https://themes.gohugo.io/, or
   create your own with the "hugo new theme <THEMENAME>" command.
2. Perhaps you want to add some content. You can add single files
   with "hugo new <SECTIONNAME>/<FILENAME>.<FORMAT>".
3. Start the built-in live server via "hugo server".

Visit https://gohugo.io/ for quickstart guide and full documentation.
```

Mettre en place le theme
```
$ cd sauml.github.io/themes/
$ git clone https://github.com/appernetic/hugo-bootstrap-premium
```

# Premier post
# Visualiser le résultat
Se placer à la racine du site
```
$ cd /xxx/xxx/sauml.github.io 
```
Démarrer le serveur de tests
```
$ hugo server -D
```
-D (--buidDraft) permet de voir les post notés comme brouillons.


