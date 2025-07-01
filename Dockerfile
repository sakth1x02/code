FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY images/ /usr/share/nginx/html/images/
COPY notification.mp3 vite.svg /usr/share/nginx/html/

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]

