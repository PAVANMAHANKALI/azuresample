FROM tomcat:8
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/azure-docker-v1.war


# dummy commit
