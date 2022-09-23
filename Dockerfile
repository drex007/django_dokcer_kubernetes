#Specify the python docker image/container type you will like to use 
FROM python:3.10.4-slim

#Copy your project to a dir called app
COPY . /app 
#Change working dir to our app dir
WORKDIR /app
#we try to create a virualenv, and it is usually(conventional method )stored in an opt folder
RUN python3 -m venv /opt/env

RUN pip install pip --upgrade

#Every virtualenv file has bin and pip file in it dir, so we navigate to the env dir and install all our requirments
RUN /opt/env/bin/pip install -r requirements.txt

#Helps you with running django commmands without activating the virtualenv   
RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]