# docker-python-test

This is just a Python container with [pytest](https://docs.pytest.org/en/7.1.x/) installed.

## Usage

### Build the container

To build it with `docker-compose`, the existing [docker-compose.yml](docker-compose.yml) should get you a basic container:

```sh
docker-compose build
```

To build a custom pytest container, you can use `3ch01c/python-test:3.9` as a base image:

```dockerfile
# Dockerfile
FROM 3ch01c/python-test:3.9

# add some tests and do stuff
```

To test some Python code, add the code to `./src`  and tests to `./tests`.:

```sh
docker-compose run
```

Alternatively, you can do it the long way:

```sh
docker run -it --rm -v $PWD/tests:/usr/src/app/tests -v $PWD/pytest.ini:/usr/src/app/pytest.ini -v $PWD/src:/usr/src/app/src 3ch01c/python-test:3.9
```
