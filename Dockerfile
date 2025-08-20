FROM python:slim-bookworm
ARG ANKI_VERSION
RUN pip install anki==${ANKI_VERSION}

ENV SYNC_USER1=user:pass SYNC_BASE=/config

WORKDIR /config

EXPOSE 8080

CMD python -m anki.syncserver
