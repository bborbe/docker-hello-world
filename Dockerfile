FROM nginx
EXPOSE 80
ADD index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
