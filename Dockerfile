FROM ubuntu:latest  
RUN apt-get update  
RUN apt-get install -y nginx  
RUN rm /etc/nginx/sites-enabled/*
COPY ./host/otus.site.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/otus.site.conf /etc/nginx/sites-enabled
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
