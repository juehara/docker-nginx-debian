FROM debian:latest
RUN apt-get update && apt-get install -y nginx
RUN apt-get clean
MKDIR /usr/share/nginx/html
EXPOSE 80
CMD [nginx-debug, '-g', 'daemon off;']
