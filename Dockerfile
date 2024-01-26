# Use an official Tomcat runtime as a parent image
FROM tomcat:latest

# Copy your war file into the webapps directory of Tomcat
COPY SampleWebApp.war /usr/local/tomcat/webapps
COPY tomcatusers.xml /usr/local/tomcat/conf

# Optionally, you can expose the Tomcat port (8080) if needed
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
