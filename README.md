# docker-python-test

This is just a Python container with pytest installed.

## Usage

To build it locally:

```sh
docker-compose build
```

Or just use the Docker Hub version in your own creation:

```dockerfile
# Dockerfile
FROM 3ch01c/python-test:3.9

# add some tests and do stuff
```

To run it using `docker-compose`:

```sh
docker-compose run
```

You'll probably want to add some custom source to `./src`  and custom tests to `./tests`, though.
