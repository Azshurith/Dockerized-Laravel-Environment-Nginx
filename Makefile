# Include Environment Variables
include .env

project_start: ## Starts the Project
	if not exist Web mkdir Web
	docker compose up -d

project_stop: ## Stops the Project
	docker compose stop

project_destroy: ## Deletes the Project
	docker compose down -v

project_create: ## Creates a laravel Project
	docker exec -it -u root ${PROJECT}-composer composer create-project laravel/laravel .
	docker exec -it -u root ${PROJECT}-php chmod -R 777 /var/www/storage
	make npm_install

project_pull: ## Setup Laravel Project from Git
	git clone $(PROJECT_REPOSITORY) Web
	make composer_update
	make php_env
	make artisan_key
	make npm_install

project_chown: ## Sets the project's permission to www
	docker exec -it -u root ${PROJECT}-php chown -R www:www /var/www

npm_vite: ## Starts local vite
	docker exec -it -u root ${PROJECT}-npm vite --host

npm_build: ## Build vite scripts
	docker exec -it -u root ${PROJECT}-npm vite build

npm_install: ## Install NPM package
	docker exec -it -u root ${PROJECT}-npm npm install

npm_dev: ## Starts NPM Development
	docker exec -it -u root ${PROJECT}-npm npm run dev -- --host

composer_update: ## Update Project's Composer
	docker exec -it -u root ${PROJECT}-composer composer update

artisan_key: ## Generate Artisan Project Key
	docker exec -it -u root ${PROJECT}-php php artisan key:generate

artisan_migrate:
	docker exec -it -u root ${PROJECT}-php php artisan migrate:fresh

artisan_flush: ## Clear Artisan Config
	docker exec -it -u root ${PROJECT}-php php artisan optimize:clear

php_env: ## Create .env from .env sample
	docker exec -it -u root ${PROJECT}-php cp .env.example .env

php_deploy: ## Execute Command to PHP Container
	docker exec -it -u root ${PROJECT}-php /bin/bash

php_chown: ## Execute Command to PHP Container
	docker exec -it -u root ${PROJECT}-php /bin/bash -c "cd .. && chown -R www:www www/"

mariadb_deploy: ## Execute Command to MariaDB Container
	docker exec -it -u root ${PROJECT}-mariadb /bin/bash

emulator_install: ## Execute Command to Emulator Container
	docker exec -it -u root ${PROJECT}-emulator npm install

emulator_deploy: ## Execute Command to Emulator Container
	docker exec -it -u root ${PROJECT}-emulator /bin/bash

emulator_start: ## Execute Command to Emulator Container
	docker exec -it -u root ${PROJECT}-emulator npm run start