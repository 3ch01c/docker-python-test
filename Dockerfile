ARG PYTHON_VERSION 3.9
ENV PYTHON_VERSION ${PYTHON_VERSION}
FROM python:${PYTHON_VERSION}

RUN pip install pytest

WORKDIR /usr/src/app

CMD ["pytest", "-v", "tests"]
VOLUME /usr/src/app/tests
VOLUME /usr/src/app/pytest.ini
