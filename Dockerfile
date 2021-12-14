FROM python:3
WORKDIR /app
COPY . /app
RUN apt-get update -y && apt-get install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools && pip install wheel flask

EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "myproject.py" ]
