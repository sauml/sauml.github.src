+++
date = "2016-01-13"
title = "Correction d'orthographe sous vim"
slug = "vim-correction-orthographe"
draft = false
toc = true
tags = ["vim"]

+++

# Installation 

* Fermer vim

## Sous window

* Aller dans le répertoire des langues vim

        cd C:\Program Files\Vim\vim74\spell

* Télécharger les fichiers de traduction.  
Penser à paramétrer le proxy si besoin `set et HTTP_PROXY=http://...`

        curl -o fr.latin1.spl http://ftp.vim.org/vim/runtime/spell/fr.latin1.spl
        curl -o fr.latin1.sug http://ftp.vim.org/vim/runtime/spell/fr.latin1.sug
        curl -o fr.utf-8.spl http://ftp.vim.org/vim/runtime/spell/fr.utf-8.spl
        curl -o fr.utf-8.sug http://ftp.vim.org/vim/runtime/spell/fr.utf-8.sug

## Sous linux

* Aller dans le répertoire des langues vim (le créer s'il n'existe pas).

        mkdir -p ~/.vim/spell
        cd ~/.vim/spell

* Télécharger les fichiers de traduction

        wget http://ftp.vim.org/vim/runtime/spell/fr.latin1.spl
        wget http://ftp.vim.org/vim/runtime/spell/fr.latin1.sug
        wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.spl
        wget http://ftp.vim.org/vim/runtime/spell/fr.utf-8.sug

# Paramétrage

* Dans `.vimrc` ajouter:
    * `set spelllang=fr` pour définir la langue.
    * `set spell` pour activer la correction par défaut.

# Utilisation

## En mode normal

* `]s` va au mot suivant.
* `[s` va au mot précédent.
* `zg` ajoute le mot dans le dictionnaire local.
* `zG` ajoute le mot au dictionnaire global.
* `z=` affiche la liste des propositions.

## En mode insertion

Il es possible d'afficher les propositions en cours de frappe.  
Pour cela, il faut utiliser la complétion `Ctrl+X`.  
Le mode de complétion utilisé par `spell` est `s`.  
Il suffit donc lorsqu'une faute apparait de faire `Ctrl+X` puis `s`.  


