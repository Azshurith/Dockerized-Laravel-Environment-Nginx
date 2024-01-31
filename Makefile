# Include Environment Variables
include .env

help: ## Displays all available Commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

project_start: ## Starts the Project
	@if [ ! -d "Web" ]; then mkdir Web; fi
	docker compose up -d

project_stop: ## Stops the Project
	docker compose stop

project_destroy: ## Deletes the Project
	docker compose down -v

project_create: ## Creates a laravel Project
	docker exec -it -u root laravel-php composer create-project laravel/laravel .
	docker exec -it -u root laravel-php chmod -R 777 /var/www/storage

project_pull: ## Setup Laravel Project from Git
	git clone $(PROJECT_REPOSITORY) Web
	# make project_chown
	make composer_update
	make setup_env
	make artisan_key

project_chown: ## Sets the project's permission to www
	docker exec -it -u root laravel-php chown -R www:www /var/www

composer_update: ## Update Project's Composer
	docker exec -it -u root laravel-php composer update

setup_env: ## Create .env from .env sample
	docker exec -it -u root laravel-php cp .env.example .env
	
artisan_key: ## Generate Artisan Project Key
	docker exec -it -u root laravel-php php artisan key:generate

deploy_php: ## Execute Command to PHP Container
	docker exec -it -u root laravel-php /bin/bash