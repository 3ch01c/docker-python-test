FROM python:3.9

RUN pip install pytest

WORKDIR /usr/src/app

CMD ["pytest", "-v", "tests"]
VOLUME /usr/src/app/tests
VOLUME /usr/src/app/pytest.ini
