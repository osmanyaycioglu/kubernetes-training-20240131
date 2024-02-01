minikube start --nodes 3 --container-runtime=cri-o --driver=podman

kubectl get nodes

minikube status

minikube addons list

kubectl get pods -n kube-system

kind create cluster --config=kind-cluster.yaml