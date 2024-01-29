# Use an official Tomcat runtime as a parent image
FROM tomcat:latest
# Update package lists and install Vim
RUN apt-get update && apt-get install -y vim

# Optionally, you can expose the Tomcat port (8080) if needed
EXPOSE 8080

# Copy your war file into the webapps directory of Tomcat
COPY SampleWebApp.war /usr/local/tomcat/webapps
COPY tomcat-users.xml /usr/local/tomcat/conf

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
