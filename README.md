# Mon Projet Symfony avec Docker

Ce projet Symfony est configuré avec Docker pour simplifier le développement et la gestion des services (PHP, Nginx, MySQL).

## Prérequis

- Docker et Docker Compose doivent être installés sur votre machine.
- Assurez-vous d'avoir un accès à un terminal pour exécuter les commandes Docker et Make.

## Démarrer l'application

### 1. Cloner ce dépôt

Clonez ce dépôt sur votre machine locale :

```bash
git clone https://gitlab.com/mon-utilisateur/mon-projet-symfony.git
cd mon-projet-symfony

Voici un résumé des principales commandes Make disponibles dans ce projet :

make up : Démarre les services Docker en mode détaché.
make down : Arrête et supprime les conteneurs Docker.
make sh : Accède au conteneur PHP via un terminal interactif.
make composer : Exécute Composer dans le conteneur.
make create-db : Crée la base de données via Doctrine.
make migrate : Applique les migrations Doctrine.
make logs : Affiche les logs de Nginx.