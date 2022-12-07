FROM ubuntu:20.04
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
	apt-get install nginx nginx-extras -y
RUN mkdir -p /var/www/html/prod_php/
RUN mkdir -p /var/www/html/prod_jsp/
RUN chmod 777 /var/www/html/prod_php/
RUN chmod 777 /var/www/html/prod_jsp/
COPY ./status.php /etc/
COPY ./status.jsp /etc/
COPY ./.htpasswd /etc/nginx/.htpasswd
COPY ./nginx.conf /etc/nginx/
COPY ./default /etc/nginx/sites-available/
COPY ./fastcgi-php.conf  /etc/nginx/snippets/
COPY ./entrypoint.sh /
EXPOSE 9090
ENTRYPOINT ["/entrypoint.sh"]
