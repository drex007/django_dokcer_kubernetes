#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"viktor@gmail.com"}
USERNAME=${DJANGO_SUPERUSER_USERNAME}

cd /app/  #We went into the directory where we can locate our manage.py file


/opt/env/bin/python manage.py migrate --noinput
/opt/env/bin/python manage.py createsuperuser \
        --noinput \
        --username $DJANGO_SUPERUSER_USERNAME \
        --email $SUPERUSER_EMAIL