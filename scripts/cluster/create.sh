#! /bin/bash

k3d cluster create my-cluster -p "8080:80@loadbalancer" -p "8443:443@loadbalancer"
