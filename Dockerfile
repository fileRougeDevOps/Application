FROM python:3
WORKDIR /app
COPY . /app
RUN apt-get update -y && apt-get install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools && pip install wheel flask && apt-get install -y curl

EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "myproject.py" ]

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:5000 || exit 1
