+++
draft = true
slug = ""
date = "2017-02-22T22:27:57+01:00"
title = "z_draft_hugo_6_Deployer"
tags = ["draft"]
toc = true
type = "post"

+++

- Créer un compte sur github si pas déjà fait.  
- Créer un dépôt pour les sources `sauml.github.src`  
- Créer un dépôt pour le site `sauml.github.io`

# Déployer les sources
Pour ne déployer que les sources  
Se placer à la racine di site et demander à git de ne pas prendre en compte le dossier public.
```
$ echo "public" >> .gitignore

```

```
$ git init
$ git add --all
$ git commit --allow-empty -m "premier commit"
$ git remote add origin https://github.com/sauml/sauml.github.src.git
$ git push -u origin master
```

# Déployer le site

ATTENTION SUPPRIMER PUBLIC/ AVANT DE REGENERER LE SITE.



```
$ cd public/
$ git init
$ git add --all
$ git commit -m "premier commit"
$ git remote add origin https://github.com/sauml/sauml.github.io.git
$ git push -u origin master
```

# Visualiser le résultat
Le site est visible à l'adresse `http://sauml.github.io/`

