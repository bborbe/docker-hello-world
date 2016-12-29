FROM nginx
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>
ARG VERSION
EXPOSE 80
COPY index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
