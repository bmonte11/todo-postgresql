FROM ubuntu:latest
RUN apt-get update && apt-get -y install python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]