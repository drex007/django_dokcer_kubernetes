#!/bin/bash
APP_PORT=${PORT:-8000}
#change directory into appp
cd /app/ 
#Locate where our env file is and run our production server 
/opt/env/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application
--bind "0.0.0.0:${APP_PORT}"  