FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PORT=10000

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Configure Gunicorn with memory-efficient settings
CMD gunicorn --bind 0.0.0.0:$PORT \
    --workers=1 \
    --threads=2 \
    --timeout=120 \
    --max-requests=1000 \
    --max-requests-jitter=50 \
    bestviewproj.wsgi:application