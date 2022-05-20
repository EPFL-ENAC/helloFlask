UID := $(shell id -u)
GID := $(shell id -g)
FLASK_APP := hello
FLASK_RUN_HOST := 0.0.0.0

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker-compose up --remove-orphans

setup: # local & inside Docker
	poetry install

run-dev: # local
	cd app; FLASK_APP=${FLASK_APP} FLASK_RUN_HOST=${FLASK_RUN_HOST} FLASK_ENV=development poetry run flask run

run-prod: # local & inside Docker
	echo TODO

run: # main entry for on server, can be run on desktop also
	docker-compose build --pull
	docker-compose up --remove-orphans --force-recreate -d
