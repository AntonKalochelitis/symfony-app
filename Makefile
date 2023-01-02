up:
	mkdir -p ./.docker/mysql
	docker network create symfony-networks || docker-compose \
		-f docker-compose.yml \
		--env-file=.env.local \
		up -d --build --remove-orphans

prod:
	mkdir -p ./.docker/mysql
	docker network create symfony-networks || docker-compose \
        -f ./docker-compose.yml
	--env-file=./.env.prod \
	up -d --build --remove-orphans

preprod:
	mkdir -p ./.docker/mysql
	docker network create symfony-networks || docker-compose \
        -f ./docker-compose.yml
	--env-file=./.env.prod \
	up -d --build --remove-orphans

ssh:
	docker exec -it symfony-php-fpm bash

stop:
	docker stop symfony-nginx
	docker stop symfony-php-fpm
	docker stop symfony-mysql
	docker stop symfony-redis
	docker stop symfony-phpmyadmin

rm:
	docker rm symfony-nginx
	docker rm symfony-php-fpm
	docker rm symfony-mysql
	docker rm symfony-redis
	docker rm symfony-phpmyadmin