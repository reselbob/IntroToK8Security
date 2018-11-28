#delete the deployment
kubectl delete deployment nginx

#delete the service
kubectl delete service nginx

#delete ingress
kubectl delete ingress nginx

#delete the secret
kubectl delete secret example-com-tls
