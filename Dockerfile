# Base image to serve static content
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default index.html
RUN rm -rf ./*

# Copy your static files (e.g., from your 'build' or project root)
COPY . .

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
