sudo apt update -y
sudo apt install -y curl wget apt-transport-https ca-certificates conntrack

sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker  # activates the group without logout/login

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start --driver=docker

kubectl get nodes
kubectl get pods -A
