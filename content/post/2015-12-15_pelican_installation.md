+++
date = "2015-12-15"
title = "Installation de Pélican"
slug = "installation-de-pelican"
draft = false
toc = true
tags = [ "pelican", "blog notes" ]

+++

# Introduction

Pélican est un générateur de site statique écrit en python.

Un générateur de site statique permet de générer en site constitué de pages 
html à partir de fichiers texte saisis dans différents formats Markdown, 
reStructuredText, ... 

Il est facile d'héberger le site généré sur github ou bitbucket par exemple.

# Installation

Python et pip doivent être installés.
Il suffit de lancer.  

```
pip install pelican
```
        
Il est préférable de l'installé dans un environnement virtuel 
python.  
Je ne le fais pas pour cette installation qui n'est pas définitive.

# Création des répertoires de travail

Je crée les répertoires suivants:

* `pelican` qui contiendra tous les éléments relatifs à pélican.  
* `pelican-themes` qui permettra de récupérer tous les thèmes pélicans.  
* `sauml.bitbucket.org` qui correspond à ce blog-notes.  

```
./pelican
├── pelican-plugins
├── pelican-themes
└── sauml.bitbucket.org
```

Tout est en place pour la création d'un site.  
Un exemple est disponible ici: [Création du blog-notes avec Pélican]({{< ref "2015-12-16_pelican_creation_site.md" >}})  

