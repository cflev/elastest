Prepare the volumes for GKE:
```
kubectl apply -f provider/gke/gke-storageclass.yaml
```

Now create a namespace for elatest:
```
kubectl create namespace elatest
```

Change kubectl namespace context to it:
```
kubectx elatest
```

Create the volumes
```
kubectl apply -f provider/gke/edm-data-volume.yaml
```

Create MySQL
```
kubectl apply -f edm/edm-mysql-deployment.yaml
```
