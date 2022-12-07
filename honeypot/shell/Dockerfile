FROM ubuntu:20.04
RUN apt-get update && \
	apt-get install curl net-tools -y
COPY ./init /sbin/

EXPOSE 2022
CMD ["/sbin/init"]

