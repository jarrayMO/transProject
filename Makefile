# Makefile pour simplifier les commandes Docker

# Nom du projet et des services Docker
PROJECT_NAME := mon_projet_symfony
DOCKER_COMPOSE := docker-compose

# Démarrer les conteneurs en mode détaché
up:
	$(DOCKER_COMPOSE) up -d

# Arrêter les conteneurs
down:
	$(DOCKER_COMPOSE) down

# Accéder au conteneur PHP
sh:
	$(DOCKER_COMPOSE) exec php bash

# Exécuter Composer dans le conteneur
composer:
	$(DOCKER_COMPOSE) run --rm composer

# Lancer les migrations
migrate:
	$(DOCKER_COMPOSE) exec php bin/console doctrine:migrations:migrate

# Créer la base de données
create-db:
	$(DOCKER_COMPOSE) exec php bin/console doctrine:database:create

# Afficher les logs de Nginx
logs:
	$(DOCKER_COMPOSE) logs -f nginx

# Mettre à jour les dépendances Composer
install:
	$(DOCKER_COMPOSE) run --rm composer install

# Accéder à MySQL (via MySQL CLI)
mysql:
	$(DOCKER_COMPOSE) exec mysql mysql -u root -p
