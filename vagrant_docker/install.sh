#install jenkins version 2.150.3
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine
mkdir docker
cd docker
mkdir jenkins_home
chmod 777 jenkins_home
cd ..
docker run -d -p 8080:8080 -p 50000:50000 -v "/home/ubuntu/docker/jenkins_home:/var/jenkins_home" registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine
