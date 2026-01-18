# Base image - nginx for serving static files
FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration with .conf extension
COPY nginx.conf /etc/nginx/conf.d/scoutflow.conf

# Copy frontend files to nginx html directory
COPY pages /usr/share/nginx/html/pages

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
