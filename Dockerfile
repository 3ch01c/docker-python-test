FROM python:3.9

RUN pip install pytest

WORKDIR /usr/src/app

ENTRYPOINT ["pytest", "."]
VOLUME /usr/src/app/tests
