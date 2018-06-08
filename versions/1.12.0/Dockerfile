FROM ubuntu:16.04
LABEL maintainer="alessandrov87 (https://github.com/AlessandroVaccarino)"

ENV DRILL_VERSION 1.12.0

# install dev tools
RUN apt-get update && apt-get install -y wget tar sudo && rm -rf /var/lib/apt/lists/*

# install java7
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
	add-apt-repository ppa:openjdk-r/ppa && \
	apt-get update && \
	apt-get install -y openjdk-7-jdk && \
	apt-get clean

# create Drill and Data folder
RUN mkdir -p /opt/drill
RUN mkdir -p /srv/data

# get drill
RUN wget -O /opt/drill/apache-drill.tar.gz http://it.apache.contactlab.it/drill/drill-$DRILL_VERSION/apache-drill-$DRILL_VERSION.tar.gz

# extract Drill
RUN tar -xvzf /opt/drill/apache-drill.tar.gz -C /opt/drill
RUN rm /opt/drill/apache-drill.tar.gz

# add boostrap.sh
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENV BOOTSTRAP /etc/bootstrap.sh

# Expose ports
EXPOSE 8047
EXPOSE 31010
