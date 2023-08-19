# Use the official Nginx image as a parent image
FROM nginx:latest

# Copy the custom Nginx configuration file to the container
COPY default.conf /etc/nginx/conf.d/default.conf

# Run a command to display the contents of the Nginx configuration file
RUN cat /etc/nginx/nginx.conf

# Expose port 82 to the world outside this container
EXPOSE 82

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
