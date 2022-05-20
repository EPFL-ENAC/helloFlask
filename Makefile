UID := $(shell id -u)
GID := $(shell id -g)
FLASK_APP := hello

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker-compose up --remove-orphans

setup: install_backend

install_backend:
	poetry install

run-local:
	cd app; FLASK_APP=${FLASK_APP} FLASK_ENV=development poetry run flask run
