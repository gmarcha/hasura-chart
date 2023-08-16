#! /bin/bash

curl -fsSL https://get.docker.com | sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
