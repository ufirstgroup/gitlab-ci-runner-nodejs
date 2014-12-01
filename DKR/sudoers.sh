#ALLOW USING SUDO
apt-get update -y
apt-get install sudo
useradd docker && echo "docker:docker" | chpasswd && adduser docker sudo
mkdir -p /home/docker && chown -R docker:docker /home/docker
