#ALLOW USING SUDO
useradd docker && echo "docker:docker" | chpasswd && adduser docker sudo
mkdir -p /home/docker && chown -R docker:docker /home/docker
