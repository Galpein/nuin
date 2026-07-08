FROM nginx:alpine

# Config con redirección 301 al dominio principal + gzip + cache
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Sitio estático (imágenes, logos, NUIN/, index.html, robots, sitemap…)
COPY . /usr/share/nginx/html

EXPOSE 80
