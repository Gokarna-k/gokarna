FROM tomcat:9

COPY target/pixel-forge.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
