# Flask Hello world project ready with docker

Tiny demo project that :

- run Flask server
- with a Makefile
- inside Docker

# Setup

Run the following command :

```bash
make setup
```

# Run the app

## localy

Run the following commands :

```bash
make generate-selfsigned-cert # only once
make run-dev # dev mode
make run-prod # prod mode (like on server)
```

## on server

Run the following command :

```bash
make run
```
