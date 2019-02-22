echo "~ Installing Docker ~"
#install Docker
sudo snap install docker
echo "~ Installing Docker-compose ~"
#install Docker-compose
sudo apt-get install docker-compose -y
echo "~ Installing java 8 ~"
#install java
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
java -version
echo "~ Installing jenkins ~"
#install jenkins:
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins=2.150.3 -y
