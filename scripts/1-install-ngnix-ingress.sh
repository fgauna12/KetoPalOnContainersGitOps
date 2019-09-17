helm install stable/nginx-ingress --namespace codecampster --set controller.replicateCount=2 --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux

watch kubectl get service -l app=nginx-ingress --namespace codecampster

# after the service has an external load balancer ip assigned, then proceed to the second script