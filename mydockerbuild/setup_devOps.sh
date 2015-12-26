docker cp gerrit.config $1:/home/gerrit2/gerrit/etc/gerrit.config

docker exec $1 /home/gerrit2/gerrit/bin/gerrit.sh restart

java -jar jenkins-cli.jar -s http://$2:$3 create-job docker_job < jenkins_job1.xml

