echo "~ Installing Docker ~"
#install Docker
sudo snap install docker
echo "~ Installing Docker-compose ~"
#install Docker-compose
sudo apt-get install docker-compose -y
echo "~ Installing java 8 ~"
#install java
sudo apt update
sudo apt-get install openjdk-8-jdk -y
echo "~ Installing jenkins ~"
#install jenkins:
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list
sudo apt update
sudo apt install jenkins