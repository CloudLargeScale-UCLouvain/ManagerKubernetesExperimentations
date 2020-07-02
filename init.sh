sudo snap install kubectl --classic
sudo snap install helm --classic
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo add argo https://argoproj.github.io/argo-helm

cd chart
helm dep update
cd ..


kubectl apply -f ./cluster-role-binding-manager.yaml
kubectl apply -f ./cluster-role-binding-default.yaml
kubectl apply -f ./secret-minio.yaml