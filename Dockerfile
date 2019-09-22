FROM tomcat:8.0
LABEL maintainer="cloudadmin@enfrasys.com"

COPY webapps.tar.gz /usr/local/tomcat/
RUN cd /usr/local/tomcat && tar -xvf webapps.tar.gz

COPY tomcatfolder.tar.gz /usr/local/tomcat/
RUN cd /usr/local/tomcat && tar -xvf tomcatfolder.tar.gz
RUN cd / && cp -Rf /usr/local/tomcat/etc/tomcat/ /usr/local/tomcat/
RUN cp -Rf /usr/local/tomcat/etc/tomcat/tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080