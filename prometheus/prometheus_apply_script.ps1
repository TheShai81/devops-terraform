kubectl apply -n dev -f monitoring-namespace.yaml
kubectl apply -n dev -f prometheus-rbac.yaml
kubectl apply -n dev -f prometheus-configmap.yaml
kubectl apply -n dev -f prometheus-deployment.yaml
kubectl apply -n dev -f prometheus-service.yaml