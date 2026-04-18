FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY page1.html /usr/share/nginx/html/
COPY page2.html /usr/share/nginx/html/
