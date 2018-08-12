# docker-php7-fpm-alpine
Alpine 3.7 based Docker image with PHP 7.2 FPM

# Software & Versions
- Alpine 3.7
- PHP 7.2

# Extra PHP modules installed
- redis
- intl
- mysqli
- pdo
- pdo_mysql
- mbstring
- tokenizer

# Building
1. `./bin/dockerlint`
2. `./bin/build docker build x.y.z [dev,prod]`

# Helper scripts
1. `./bin/dockerlint` : Checks the syntax of the Dockerfile file
2. `./bin/build` : for building images
3. `./bin/start` : for starting a container
4. `./bin/enter` : for entering a container
