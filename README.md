# TP2 – Gestion de Réservations de Gâteaux

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![JSP/Servlet](https://img.shields.io/badge/JSP%2FServlet-007396?style=for-the-badge)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)

> **Module :** Java EE – Développement Web Entreprise  
> **Étudiante :** Zaynab Ait Addi | **Encadrant :** Prof. Mohamed CHERRADI  
> **ENSAH – TDIA2 S4 | Année 2025-2026**

---

## 📋 Description

Application web de gestion de clients et de réservations de gâteaux, développée avec les **Servlets Java EE** et les pages **JSP**. Ce TP constitue la première application MVC complète du module, illustrant le traitement de formulaires, la validation côté serveur et le stockage en session HTTP.

---

## 🎯 Objectifs

- Créer et configurer des Servlets Java EE pour traiter des formulaires HTML
- Utiliser le `RequestDispatcher` pour transmettre les données aux pages JSP
- Stocker les données (clients, réservations) dans la **session HTTP**
- Afficher les listes de clients et réservations dans des pages JSP dédiées
- Valider les champs de formulaires côté serveur

---

## 🏗️ Architecture MVC

```
TP2/
├── src/servlets/
│   ├── CreerClient.java          # POST /addClt – inscription client
│   ├── CreerReservation.java     # POST /addRsv – création réservation
│   ├── ListeClients.java         # GET /listClients – liste des clients
│   └── ListeReservations.java    # GET /listReservations – liste des réservations
├── WEB-INF/
│   └── web.xml                   # Mapping des Servlets
├── index.jsp                     # Page d'accueil
├── Inscription.jsp               # Formulaire d'inscription client
├── Reservation.jsp               # Formulaire de réservation
├── infoClient.jsp                # Confirmation client créé
├── infoReservation.jsp           # Confirmation réservation créée
├── listeClients.jsp              # Tableau de tous les clients
└── listeReservations.jsp         # Tableau de toutes les réservations
```

**Couches :**
| Couche | Fichiers | Rôle |
|--------|----------|------|
| Contrôleur | `CreerClient`, `CreerReservation`, `ListeClients`, `ListeReservations` | Traitement HTTP |
| Vue | JSP (`*.jsp`) | Affichage et collecte |
| Modèle | `HttpSession` (`List<Map<String,String>>`) | Stockage temporaire |

---

## 🔄 Flux d'Exécution

**Création d'un client :**
```
Inscription.jsp → POST /addClt → CreerClient.java
    → validation des champs
    → stockage en session (clients)
    → forward → infoClient.jsp (confirmation)
```

**Création d'une réservation :**
```
Reservation.jsp → POST /addRsv → CreerReservation.java
    → validation (nom, prénom, téléphone, email, type, prix, vue)
    → stockage en session (reservations)
    → forward → infoReservation.jsp (confirmation)
```

---

## 🌐 URLs de l'Application

| URL | Description |
|-----|-------------|
| `/` | Page d'accueil (`index.jsp`) |
| `/Inscription.jsp` | Formulaire d'inscription client |
| `/Reservation.jsp` | Formulaire de réservation |
| `/addClt` | Servlet création client (POST) |
| `/addRsv` | Servlet création réservation (POST) |
| `/listClients` | Liste de tous les clients |
| `/listReservations` | Liste de toutes les réservations |

---

## 🚀 Installation et Exécution

### Prérequis

| Outil | Version |
|-------|---------|
| Java JDK | 11 ou supérieur |
| Apache Tomcat | 9.x |
| Eclipse IDE | 2023-09 ou supérieur |

### Déploiement

1. Importer le projet dans Eclipse IDE
2. Configurer Apache Tomcat 9 dans Eclipse
3. Clic droit sur le projet → **Run As → Run on Server**
4. Accéder via `http://localhost:8080/CakeJava/`

### Déploiement Manuel (WAR)

```bash
# Exporter en WAR depuis Eclipse : File → Export → Web → WAR file
cp CakeJava.war $CATALINA_HOME/webapps/
$CATALINA_HOME/bin/startup.bat
```

---

## 🔑 Concepts Clés

- **Servlet** : classe Java héritant de `HttpServlet`, traite `doGet()` et `doPost()`
- **RequestDispatcher** : `request.getRequestDispatcher("vue.jsp").forward(req, resp)` pour transmettre vers une JSP
- **Session HTTP** : `request.getSession()` pour stocker les données entre requêtes
- **web.xml** : mapping Servlet ↔ URL (`<servlet-mapping>`)
- **Validation** : vérification `null` et `isEmpty()` avant traitement

---

## ⚠️ Notes Importantes

- Les données sont stockées en **mémoire** (volatiles) – perdues au redémarrage de Tomcat
- Pas d'authentification dans ce TP (ajoutée en TP3)
- Stockage dans la session HTTP (non partagé entre utilisateurs différents)

---

*TP2 – Java EE | ENSAH | TDIA2 S4 | © 2026 Zaynab AIT ADDI*
