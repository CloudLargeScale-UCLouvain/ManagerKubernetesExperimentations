helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo add argo https://argoproj.github.io/argo-helm

kubectl apply -f ./cluster-role-binding-manager.yaml