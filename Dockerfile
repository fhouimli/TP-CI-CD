FROM python:3.9.5-alpine

WORKDIR '/app'
RUN pip install Flask
RUN apk update
RUN apk add git
RUN git clone https://github.com/vanessakovalsky/example-python.git

CMD ["python", "example-python/vagrant/src/main.py"]
