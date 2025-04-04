#!/bin/bash

# Wait for database to be ready
echo "Waiting for database..."
sleep 5

# Run migrations with verbosity for debugging
echo "Running migrations..."
python manage.py migrate --noinput --verbosity 2

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Create superuser if not exists
echo "Setting up superuser..."
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(email='$DJANGO_ADMIN_EMAIL').exists() or User.objects.create_superuser('$DJANGO_ADMIN_EMAIL', '$DJANGO_ADMIN_EMAIL', '$DJANGO_ADMIN_PASSWORD')" | python manage.py shell

# Start gunicorn
echo "Starting gunicorn..."
gunicorn --bind 0.0.0.0:10000 --workers=1 --threads=2 --timeout=120 bestviewproj.wsgi:application 