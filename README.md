# Mon Projet Symfony avec Docker

Ce projet Symfony est configuré avec Docker pour simplifier le développement et la gestion des services (PHP, Nginx, MySQL).

## Prérequis

- Docker et Docker Compose doivent être installés sur votre machine.
- Assurez-vous d'avoir un accès à un terminal pour exécuter les commandes Docker et Make.

## URL de l'application

Une fois les conteneurs démarrés, l'application Symfony est accessible à l'adresse suivante :

- [http://localhost:8080](http://localhost:8080)

## Configuration de la base de données

Les paramètres de la base de données sont définis dans le service `mysql` de Docker Compose :

- **Nom de l'hôte** : `mysql`
- **Port** : 3306
- **Nom de la base de données** : `symfony_db`
- **Utilisateur** : `root`
- **Mot de passe** : `root`

Ces informations doivent être ajoutées au fichier `.env` de Symfony :

```dotenv
DATABASE_URL="mysql://root:root@mysql:3306/symfony_db"


```bash
git clone https://github.com/jarrayMO/transProject.git
cd mon-projet-symfony

Voici un résumé des principales commandes Make disponibles dans ce projet :

make up : Démarre les services Docker en mode détaché.
make down : Arrête et supprime les conteneurs Docker.
make sh : Accède au conteneur PHP via un terminal interactif.
make composer : Exécute Composer dans le conteneur.
make create-db : Crée la base de données via Doctrine.
make migrate : Applique les migrations Doctrine.
make logs : Affiche les logs de Nginx.