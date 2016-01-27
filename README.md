# dev_ops_doc

Before deployment make sure following files are modified properly.
1. gerrit.config file
    -url of gerrit server
    -ip of the smtp server

2. gerrit-trigger.xml file
    -gerrit server ip,port(httpd and sshd)
    - jenkins username in gerrit
    - password
    - etc.
    
3. jenkins.model.JenkinsLocationConfiguration.xml file
    -jenkins url
    -admin email

4. hudson.plugins.jira.JiraProjectProperty.xml file
    -jira server ip,port,username,pwd,email,issue pattern etc.

5. jenkins_job1.xml file
    -jira issue updater section
    -gerrit trigger server section
    -jira details

6. modify the yml file appripriately.
7. run docker-compose.yml up -d
8. once successfully completed take note of gerrit cont id and jenkins cont ip and port
9. run setup script with gerrit-cont-id jenkins-cont-ip jenkins-cont-port
10. manually generate the jenkins ssh key in jenkins-cont and paste it to gerrit jenkins acc.
