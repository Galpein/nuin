FROM nginx:alpine

# Sitio estático (imágenes, logos, NUIN/, index.html, robots, sitemap…)
COPY . /usr/share/nginx/html

# Config nginx: redirección 301 al dominio principal + gzip + cache.
# Se mueve fuera del docroot para que no sea accesible públicamente.
RUN mv /usr/share/nginx/html/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
