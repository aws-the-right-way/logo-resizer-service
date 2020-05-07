FROM contraslash/alpine-pillow:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN \
    apk add bash \
    && apk add bash-completion \
    && pip3 install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5001

CMD ["python3", "app/app.py"]

