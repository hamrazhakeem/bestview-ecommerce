#!/bin/bash

# Wait for database to be ready
echo "Waiting for database..."
sleep 5

# Run migrations with verbosity for debugging
echo "Running migrations..."
python manage.py migrate --noinput --verbosity 2

# Create superuser if not exists
echo "Setting up superuser..."
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(email='admin@bestview.com').exists() or User.objects.create_superuser('admin@bestview.com', 'admin@bestview.com', '1234')" | python manage.py shell

# Start gunicorn
echo "Starting gunicorn..."
gunicorn --bind 0.0.0.0:10000 --workers=1 --threads=2 --timeout=120 bestviewproj.wsgi:application 