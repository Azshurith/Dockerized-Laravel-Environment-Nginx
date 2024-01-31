# 🌟 Laravel Docker 🐋 Environment with Nginx 🌟

[![License](https://img.shields.io/badge/license-GNU-blue.svg)](https://github.com/Azshurith/Dockerized-Laravel-Environment-Artisan/blob/main/LICENSE)

This repository contains a Docker environment for Laravel applications utilizing Nginx for streamlined development and deployment.

## 🛠️ Makefile Commands

```makefile
help                 Displays all available Commands
project_start        Starts the Project
project_stop         Stops the Project
project_destroy      Deletes the Project
project_create       Creates a laravel Project
project_pull         Setup Laravel Project from Git
project_chown        Sets the project's permission to www
composer_update      Update Project's Composer
setup_env            Create .env from .env sample
artisan_key          Generate Artisan Project Key
deploy_php           Execute Command to PHP Container
```

## 📝 Environment Variables (.env)

Ensure to set up your environment variables in the .env file.

```dotenv
# Docker Project
PROJECT=

# Database Credentials
DB_PORT=
DB_NAME=
DB_USERNAME=
DB_PASSWORD=

# Project Configuration
PROJECT_REPOSITORY=
```
## 🚀 Getting Started

### Prerequisites 🛠️

- Docker: Install Docker on your system if you haven't already. You can download it [here](https://www.docker.com/get-started).

### Installation 📦

  **Setting up Laravel from your Git Repository**
  1. Set up your environment variables in the .env file.
  2. Run `make project_start` to start the Docker environment.
  3. Run `make project_pull` to clone your git repository.
  4. Access your Laravel application at http://localhost:8088/.

  **Setting up a Fresh Laravel Project**
  1. Set up your environment variables in the .env file.
  2. Run `make project_start` to start the Docker environment.
  3. Run `make project_create` to crate a fresh laravel project.
  4. Access your Laravel application at http://localhost:8088/.

## Contributing 🤝

Contributions are welcome! If you'd like to contribute to this project, please follow the [Contributing Guidelines](CONTRIBUTING.md).

## License 📝

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

Special thanks to the open-source community for their valuable contributions and inspiration.

## Contact 📧

For questions or feedback, please feel free to reach out:

- GitHub: [Devitrax](https://github.com/Azshurith)

<p align="center">
  Made with ❤️ by Devitrax
</p>
