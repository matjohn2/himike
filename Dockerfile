FROM ubuntu
MAINTAINER Mike

RUN apt-get update
RUN apt-get -y install imagemagick
RUN apt-get -y install python python-pip

COPY * /app/
RUN cd /app ; pip install -r requirements.txt
RUN ls -la /app

CMD ["python", "/app/app.py"]
