FROM alpine:latest

WORKDIR /opt/gtts

RUN apk add --no-cache py3-flask py3-gtts py3-gunicorn

COPY main.py .

CMD ["gunicorn", "-b=:80", "--access-logfile=-", "main:app"]
