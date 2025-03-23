FROM jenkins/jenkins:lts

USER root

# Install Docker CLI inside container if needed
RUN apt-get update && apt-get install -y docker.io

# Install Jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Auto create admin user
COPY init.groovy.d/ /usr/share/jenkins/ref/init.groovy.d/
