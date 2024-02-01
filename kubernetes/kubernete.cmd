minikube start --nodes 3 --container-runtime=cri-o --driver=podman

kubectl get nodes

minikube status

minikube addons list

kubectl get pods -n kube-system

kind create cluster --config=kind-cluster.yaml

kubectl describe nodes minikube

kubectl describe pods kube-apiserver-minikube -n kube-system

kubectl apply -f .\nginx-pod.yaml

kubectl describe pods nginx-pod

kubectl get pods -o wide

kubectl exec -it nginx-pod -- sh

