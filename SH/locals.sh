
# Set the right locale
echo "LC_ALL=\"en_US.UTF-8\"" | sudo tee /etc/default/locale
sudo locale-gen en_US.UTF-8
sudo  update-locale LANG=en_US.UTF-8
