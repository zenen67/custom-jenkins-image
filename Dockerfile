FROM jenkins/jenkins:lts
COPY plugins.txt /var/jenkins_home/plugins.txt
ENV JENKINS_HOME /var/jenkins_home
VOLUME /var/jenkins_home
# for main web interface:
EXPOSE 8080

# will be used by attached slave agents:
EXPOSE 50000
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt
