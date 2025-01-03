# Instruction to deploy this Python Application

1. Create a Docker file 
```
vi Dockerfile 

```

2. Paste the following docker file and save with `wq!`
```
FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

WORKDIR /app

COPY app.py .

CMD ["python3", "app.py"]
```

3. Build the image, tagging it with your dockerhub username e.g michaelgwei86/jjtech-flask-app:v1 
```
docker build -t michaelgwei86/jjtech-python-app:v1 .
```

4. Create a container from your above image.

```
docker run --name jjtech-flask-image -d -p 8080:8080 b3c0284794c4
```