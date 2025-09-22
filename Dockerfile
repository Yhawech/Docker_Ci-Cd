# Step 1: Use the official Apache HTTP Server image as base
FROM httpd:2.4

# Step 2: Set working directory inside the container
WORKDIR /usr/local/apache2/htdocs/

# Step 3: Copy all files from the repo root into the container
COPY . /usr/local/apache2/htdocs/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Apache
CMD ["httpd-foreground"]
