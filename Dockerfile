FROM nginx:alpine

# hapus default index nginx
RUN rm -rf /usr/share/nginx/html/*

# copy semua file HTML/CSS/JS ke root web
COPY . /usr/share/nginx/html

EXPOSE 8011

CMD ["nginx", "-g", "daemon off;"]