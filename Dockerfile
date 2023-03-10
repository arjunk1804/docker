FROM ubuntu:18.04
RUN apt-get update -y && \
 wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.zip && \
 unzip apache-tomcat-9.0.72.zip && \
 rm -rf apache-tomcat-9.0.72.zip && \
 COPY gameoflife.war /mnt/servers/apache-tomcat-9.0.72/webapps/ 
EXPOSE 8080
