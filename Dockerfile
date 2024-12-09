FROM tomcat:9.0.70-jdk11-openjdk

WORKDIR /usr/local/tomcat/webapps/

COPY target/*.war app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
