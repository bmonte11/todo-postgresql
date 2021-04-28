FROM ubuntu:latest
RUN apt-get update && apt-get -y install python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN python3 app.py db init && python3 app.py db migrate && python3 app.py db upgrade
ENTRYPOINT ["python3"]
CMD ["app.py"]