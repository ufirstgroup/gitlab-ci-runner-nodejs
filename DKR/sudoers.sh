#ALLOW USING SUDO
apt-get update -y
apt-get install sudo
useradd $user_docker && echo "${user_docker}:${user_docker}" | chpasswd && adduser $user_docker sudo
mkdir -p /home/$user_docker && chown -R $user_docker:$user_docker /home/$user_docker
