FROM jenkins
MAINTAINER sujauddin <sujamullick@gmail.com>

# Install plugins
COPY plugins.txt /usr/local/etc/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/local/etc/plugins.txt

# Add gerrit-trigger plugin config file
COPY gerrit-trigger.xml /usr/local/etc/gerrit-trigger.xml
COPY gerrit-trigger.xml /var/jenkins_home/gerrit-trigger.xml

# Add credentials plugin config file
#COPY credentials.xml /usr/local/etc/credentials.xml
#COPY credentials.xml /var/jenkins_home/credentials.xml

# Add maven installation config file
#COPY hudson.tasks.Maven.xml /usr/local/etc/hudson.tasks.Maven.xml


# Add Jenkins URL and system admin e-mail config file
COPY jenkins.model.JenkinsLocationConfiguration.xml /usr/local/etc/jenkins.model.JenkinsLocationConfiguration.xml
COPY hudson.plugins.jira.JiraProjectProperty.xml /var/jenkins_home/hudson.plugins.jira.JiraProjectProperty.xml

COPY jenkins.model.JenkinsLocationConfiguration.xml /var/jenkins_home/jenkins.model.JenkinsLocationConfiguration.xml
#COPY jenkins.model.ArtifactManagerConfiguration.xml /var/jenkins_home/jenkins.model.ArtifactManagerConfiguration.xml

#COPY nodeMonitors.xml /var/jenkins_home/nodeMonitors.xml

# Add setup script.
COPY jenkins-setup.sh /usr/local/bin/jenkins-setup.sh

# Add cloud setting in config file.
COPY config.xml /usr/local/etc/config.xml
COPY jenkins-cli.jar /usr/local/etc/jenkins-cli.jar
COPY jenkins_job.xml /usr/local/etc/jenkins_job.xml


