# 🌟 Laravel Docker 🐋 Environment with Artisan 🌟

[![License](https://img.shields.io/badge/license-GNU-blue.svg)](https://github.com/Azshurith/Dockerized-Laravel-Environment-Artisan/blob/main/LICENSE)

This repository contains a Docker environment for Laravel applications utilizing Artisan for streamlined development and deployment.

## 🛠️ Makefile Commands

```makefile
help                 Displays all available Commands
start_project        Starts the Project
stop_project         Stops the Project
destroy_project      Deletes the Project
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

1. Set up your environment variables in the .env file.
2. Run make start_project to start the Docker environment.
3. Access your Laravel application at http://localhost:8000.

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