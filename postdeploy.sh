#!/bin/sh

echo "Running post-deploy scripts from postdeploy.sh"
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.createsuperuser('admin', 'admin@example.com', 'password')" | python manage.py runserver