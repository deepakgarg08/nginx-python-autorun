# Use Alpine Linux as the base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Install Python and pip
RUN apk update && \
    apk add --no-cache python3 py3-pip

# Install development tools (e.g., compilers, headers) - only for dev environment
# RUN apk add gcc musl-dev

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies from the requirements file
# RUN pip3 install -r requirements.txt # for dev
RUN pip3 install --no-cache-dir -r requirements.txt


# Copy the Gunicorn configuration file
COPY gunicorn_config.py .

# Copy the application code into the container
COPY . .

# Install nginx - only for production - if you want to use it inside alpine, but don't work with docker
# RUN apk --no-cache add nginx

# Copy the nginx configuration file to /etc/nginx/ - only for production
# COPY nginx.conf /etc/nginx/nginx.conf

# Start Gunicorn
CMD gunicorn app:app -c gunicorn_config.py

# Expose the necessary port
EXPOSE 81

