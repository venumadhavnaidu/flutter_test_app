FROM tomcat:8.0.20-jre8
COPY build/web /usr/local/tomcat/webapps/web
