FROM python:3.6-slim

#RUN apk add --update g++ gcc python3-dev py-psutil linux-headers curl bash py-pip

#ADD requirements.txt /requirements.txt
#RUN pip3 install -r requirements.txt

ADD . /script

WORKDIR script
#RUN pip3 install -r requirements.txt


