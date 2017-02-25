+++
date = "2017-02-24T23:25:04+01:00"
type = "post"
title = "Un blog pour mes notes"
slug = "un-blog-pour-mes-notes"
draft = false
toc = true
tags = ["blog","hugo", "github"]

+++

Je cherche une solution pour sauvegarder mes notes, les rendre accessibles de partout et les modifier des mes différents postes.  

# Les contraintes

Les postes que j'utilise sont principalement:  

- S2: mon portable perso actuellement sous mubuntu 16.04 LTS.  
- w1: mon portable professionnel sous Windows seven 32bits.  
    - Je ne suis pas administrateur de se poste.  
      Je ne peu donc y installer que des applications portables.  
    - Il est derrière un proxy qui interdit la plus part des services de cloud.  
      Je ne peux donc pas utiliser evernote, onenote ou autres solution du même type.  
      J'arrive à accéder à [simplenote](https://simplenote.com/) que j'utilise pour la prise de note rapide.  
    - Mon téléphone qui est sous Windows.  
      Les applications sont donc très limitées.  
      Il y a 1 ou deux clients pour simplenote, mais ils ne sont vraiment pas pratiques.  

J'aimerais une solution:  

- simple,  
- pas chère,  
- ne demandant pas ou peu de maintenance.  
    
J'ai donc penser à un blog pour répondre aux différentes contraintes d'accessibilité.  
    
# Le moteur de blog : Hugo

En recherchant une solution, j'ai découvert, qu'il existant de outils permettant de générer des [sites statiques](https://fr.wikipedia.org/wiki/Site_web#Sites_statiques) à partir de simples fichiers textes.  

Différents formats de texte sont utilisés. Certaines applications permettent de choisir le format, d'autres n'en acceptent qu'un seul.  

Parmi les formats utilisés, le [markdown](https://fr.wikipedia.org/wiki/Markdown) est fréquent. Ça tombe bien, je l'utilise déjà.  

J'ai déjà essayé [Pélican](http://docs.getpelican.com/en/stable/) mais il nécessite d'installer python.  
D'ailleurs, la plus part des générateurs de sites statiques nécessite l'installation de python, ruby ou autres.  

C'est là que [hugo](https://gohugo.io/) se distingue des autres outils.  

Le fait qu'il soit écrit en [golang](https://golang.org/) permet d'avoir:  

- un simple exécutable à lancer, sans dépendance.  
- une application légère et rapide.  

Il a également un autre avantage.  
En lançant le serveur de développement intégré à l'application, le rendu est automatiquement mis à jour lors de l'édition des fichiers.  
Cette mise à jour est presque immédiate.
        
# L'hébergement

Pour héberger un site statique, tout type de service d'hébergement peu être utilisé.  
Il suffit de déposer les fichiers générés sur un serveur web.  

Sur le poste professionnel (w2), je ne peu pas installer de client FTP.  
Les choix sont donc très limités.  

J'ai également besoin de travailler sur le contenu (les fichiers markdown) à partir de mes différents postes.  
Des outils comme Github, bitbucket ou Gitlab sont tout indiqués pour le partager des sources.  
Ils permettent de plus d'héberger un site web statique gratuitement.  

Ayant déjà un dépôt privé sous bitbucket, je choisi donc d'utiliser github pour ce blog.  
Je trouve l'interface un peu plus pratique et je n'ai pas besoin de dépôt privé pour les sources.
    
# Les éditeurs de texte

Pour éditer des fichiers markdown, un simple éditeur de texte suffis.  
De plus, comme dit plus haut, hugo permet de visualiser les modifications en cous d'écriture.  
Il n'est donc pas utile d'utiliser de plugin ou un éditeur spécifiquement prévu pour le markdown pour visualiser du rendu en cours de frappe.  

- Sous s2 (mubuntu), l'éditeur par défaut est pluma. Il est largement suffisant pour cette utilisation.  
    - Il existe un plugin pour  
        - la coloration syntaxique du markdown.  
        - plier et déplier des blocs de code.  
    - Je parlerai de ces plugins dans un futur article.  
- Sous w1 (Windows 7), j'utilise principalement notepad++.  
    - Il existe également un fichier de définition pour la colorisation du markdown.  
- vim est utilisable sur les 2 mais je n'ai pas le temps de m'y remettre et de refaire une config.
    - Ce point fait parti de ma todo liste.

# Conclusion

Je pense avoir trouvé les outils répondant au besoin.  

Il ne me reste plus qu'à mettre en place un nouveau blog, pour maintenir mes notes.  
J'y ajouterai des articles au fur et à mesure de mes différentes expérimentations ou lectures.  
Je modifierai les articles existants pour les compléter ou les corriger en fonction de mon apprentissage sur les différents points abordés.  

Je pense que la création de ce bolg-notes fera l'objet de plusieurs articles.  
