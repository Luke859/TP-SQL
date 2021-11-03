# TP-SQL
---
![](img/sql-logo.png) 

### ETAPE 1

1) Etablir le «modèle relationnel» de données (les tables, etc.)

voir le fichier "***Shéma BDD SQL.drawio***" (nécessite l'extansion **drawio**), : 

![](img/shémabdd.png)

---

2) Créer le fichier SQL permettant d’implémenter votre modèle (encadré en rouge) :
   
![](img/etap1.2.png)

---

1) Créer une base SQLite et injecter votre modèle sur **TablePlus** : 
2) 
![](img/sqlite1.png)

* Création de la base
  
![](img/sqlite2.png)

* Création des tables de la base :
 
![](img/createtable.png)

* Mêmes choses pour les tables : **Film**, **Actor**, **Role**, **Session**, **Reservation**, **Rate**, **Spot**, **SessionCategory**, **SpotCategory**
 
![](img/rendertable.png)

---

1) Peupler votre BDD avec des données de test réalistes 

![](img/peuplebdd.png)

* On peuple les données de la BDD à la main, on fait la même chose pour les tables suivantes : (**Session**, **Role**, **Rate**, **SpotCategory**, **SessionCategory**, **Spot**, **Reservation**)


---
### ETAPE 2

1) Donner les dates des séances (sans répétition) des films dans lesquels l'acteur 1 joue 

***code :***

![](img/request_1.png)

***résultat :***

![](img/resp1.png)

---
2) Donner les films offrant des séances en semaines après 18h00 avec un tarif inférieur à 10 EUR

***code :***

![](img/request_2.png)

***résultat :***

![](img/resp2.png)

---
3) Donner les noms des rôles de l’acteur numéro 4 triées par ordre alphabétique

***code :***

![](img/request_3.png)

***résultat :***

![](img/resp3.png)

---
4) Donner les dates et les horaires des séances du film numéro 7 triées par ordre décroissant selon les dates et croissant selon les horaires

***code :***

![](img/request_4.png)

***résultat :***

![](img/resp4.png)

---
5) Donner le nombre d’acteurs de la BDD

***code :***

![](img/request_5.png)

***résultat :***

![](img/resp5.png)

---
6) Donner le titre des films projetés pendant exactement deux séances

***code :***

![](img/request_6.png)

***résultat :***

![](img/resp6.png)

---
7) Donner les noms et prénoms des réalisateurs qui ont travaillé avec l’acteur dont le nom est donné

***code :***

![](img/request_7.png)

***résultat :***

![](img/resp7.png)

---
8) Donner le classement des acteurs selon le nombre de rôle réalisés par ordre décroissant

***code :***

![](img/request_8.png)

***résultat :***

![](img/resp8.png)

---
9)  Réaliser une vue(View) contenant pour chaque acteur le nombre de séance où l’on a pu voir des films dans lequel il a participé. Afficher le contenu de la vue.

***code :***

![](img/request_9.png)

***résultat :***

![](img/resp9.png)

---
10) Ecrire un déclencheur (Trigger) qui lorsque l’on réalise une réservation sur la place n°1, le fait puis change la catégorie de la place en  catégorie spéciale. Vérifier le fonctionnement du déclencheur.

***code :***

a faire

***résultat :***

a faire