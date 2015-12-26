#!/bin/bash

/opt/atlassian/jira/bin/startup.sh", "-fg"
if [ $? -eq 0 ] 
then
    echo "jira started successfully, please login to check."
	echo ""
	tail -f /var/local/atlassian/log/atlassian-jira.log
else
    cat /var/local/atlassian/log/atlassian-jira.log
fi 
