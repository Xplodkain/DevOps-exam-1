FROM alpine:3.15

RUN mkdir /app

WORKDIR /app

COPY . /app/



RUN apk add --update --no-cache python3 && \
ln -sf python3 /usr/bin/python && \
python3 -m ensurepip && \
pip3 install --no-cache --upgrade pip setuptools && \
pip install psycopg2-binary --no-cache-dir && \
pip install -r  requirements.txt && \
apk add rsync

RUN chmod +rwx /app/entrypoint.sh


ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]


EXPOSE 8080