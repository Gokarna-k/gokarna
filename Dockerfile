FROM tomcat:9

COPY target/pixel-forge-1.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
