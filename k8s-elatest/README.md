Create the GKE specific storage class:
```
kubectl apply -f provider/gke-storageclass.yaml
```

Now create a namespace for elatest:
```
kubectl create namespace elatest
```

Change kubectl namespace context to it:
```
kubectx elatest
```

Create the volumes:
```
kubectl apply -f edm/edm-volumes.yaml
```

Create MySQL
```
kubectl apply -f edm/edm-mysql.yaml
```

Cleanup:
```
kubectl delete namespaces elatest
```
