FROM tomcat:8.0
LABEL maintainer="cloudadmin@enfrasys.com"
ADD sample.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]