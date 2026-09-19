FROM nginx:alpine
# Copy your HTML files into the default Nginx public directory
COPY ./ /usr/share/nginx/html
EXPOSE 80
