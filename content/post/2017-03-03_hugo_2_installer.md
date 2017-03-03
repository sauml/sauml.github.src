+++
date = "2017-03-03T22:38:10+01:00"
title = "Hugo Partie 2: Installer"
slug = "hugo-2-installer"
draft = false
tags = ["hugo", "blog"]
toc = true

+++

Cet article est le deuxième article de la série consacrée aux étapes que j'ai suivies pour mettre en place ce blog avec hugo.

- [Hugo Partie 1: Index.]({{< ref "2017-02-28_hugo_1-index.md" >}})
- [Hugo Partie 2: Installer.]({{< ref "2017-03-03_hugo_2_installer.md" >}})
- Hugo Partie 3: Configurer.
- Hugo Partie 4: Modifier le thème.
- Hugo Partie 5: Gérer les liens.
- Hugo Partie 6: Déployer.


# Installer hugo

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
	- Créer un raccourcis dans`c:\_me\bin\`
- Vérifier l'installation.

```
c:\ hugo version
Hugo Static Site Generator v0.18.1 BuildDate: 2016-12-30T11:05:34+01:00
```

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

La structure du site est alors crée.  

```
$ tree -L 1
.
├── archetypes
├── content
├── layouts
├── static
├── themes
└── config.toml

5 directories, 1 files

```

# Installer un thème

Hugo n'installe pas de thème par défaut.  
Il faut donc en choisir un [ici](http://themes.gohugo.io/) et l'installer.

```
$ cd sauml.github.io/themes/
$ git clone https://github.com/appernetic/hugo-bootstrap-premium
```

# Premier post

Il est maintenant possible de créer le premier post.

```
$ hugo new post/Mon-post.md
```

Un fichier `Mon-post.md` est créé dans `sauml.github.io/content/post/`  
Le contenu du fichier est le suivant:

```
+++
date = "2017-03-03T22:38:10+01:00"
draft = true
title = "Mon Post"

+++

```

Ces lignes corresponde à l'en-tête du fichier.  
Il suffit de saisir le contenu après cette zone.  

# Visualiser le résultat

Se placer à la racine du site.

```
$ cd /xxx/xxx/sauml.github.io 
```

Démarrer le serveur de tests

```
$ hugo server -D
```

Le paramètre `-D (--buidDraft)` permet de voir les post notés comme brouillons.  

Le site est maintenant visible à l'adresse [http://localhost:1313](http://localhost:1313).  
Le contenu est mis çà jour automatiquement à chaque modification.  
Ce qui est particulièrement intéressant lors de la saisie d'un article, car les modifications sont visibles à chaque enregistrement du fichier source.

# A suivre ...

Le prochain article sera consacré au paramétrage du site.
