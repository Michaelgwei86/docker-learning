
# A Dockerfile is a text document that contains all the commands you would normally execute manually in order to build a Docker image. Docker can build images automatically by reading the instructions from a Dockerfile.
FROM ubuntu
LABEL project="jjtech"
RUN apt update
RUN apt full-upgrade -y && apt install python-pip -y
RUN pip2 install flask
WORKDIR /opt
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080