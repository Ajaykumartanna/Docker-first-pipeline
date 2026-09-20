FROM nginx:alpine
# Copy your HTML files into the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
