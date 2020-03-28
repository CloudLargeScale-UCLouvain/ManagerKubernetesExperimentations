helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm install argo-artifacts stable/minio --set service.type=ClusterIP   --set defaultBucket.enabled=true   --set defaultBucket.name=my-bucket --set fullnameOverride=argo-artifacts \
    --set persistence.enabled=true --set persistence.existingClaim=minio
kubectl apply -f ./cluster-role-binding-manager.yaml