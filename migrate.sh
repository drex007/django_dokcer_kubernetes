#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"viktor@gmail.com"}



cd /app/  #We went into the directory where we can locate our manage.py file
/opt/env/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL -- noinput