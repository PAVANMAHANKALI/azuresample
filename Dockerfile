FROM tomcat:8
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/azure-docker.war

COPY -v /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
# dummy commit
