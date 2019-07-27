Create the GKE specific storage class:
```
kubectl apply -f provider/gke-storageclass.yaml
```

On GKE without this hack Elasticsearch will complain
```
kubectl apply -f gke-daemonset.yaml
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

Create services
```
kubectl apply -f edm/edm-mysql.yaml
kubectl apply -f edm/edm-elasticsearch.yaml
```

Cleanup:
```
kubectl delete namespaces elatest
```
