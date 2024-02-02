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

kubectl edit deployment nginx-deployment

kubectl get deployment nginx-deployment -o yaml > current-dep.yaml

kubectl delete -f .\nginx-dep.yaml

kubectl get pods -w

kubectl get nodes --show_labels

kubectl rollout undo deployment nginx-deployment
kubectl rollout history deployment nginx-deployment
kubectl rollout undo deployment nginx-deployment --to-revision=2
kubectl rollout history deployment nginx-deployment --revision=3

kubectl get ep
kubectl get endpoints

minikube service nginx-deployment-svc --url
