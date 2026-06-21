FROM nginx:alpine
COPY *.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
RUN chmod -R 755 /usr/share/nginx/html && \
    chmod -R 755 /var/cache/nginx /var/run || true
EXPOSE 80