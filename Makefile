FLASK_APP := hello

setup: install_backend

install_backend:
	poetry install

run-local:
	cd app; FLASK_APP=${FLASK_APP} FLASK_ENV=development poetry run flask run
