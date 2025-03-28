# WordPress Deployment with RWX Support on GKE

## Step 1: Apply StorageClass, PersistentVolume (PV), and PersistentVolumeClaim (PVC)

```sh
kubectl apply -f storage-class.yaml
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
```

## Step 2: Install WordPress using Helm
Deploy WordPress using Helm with the configured storage.

```sh
helm install wordpress interview/helm/wordpress/
```

## Verification

```sh
kubectl get pods
kubectl get pvc
kubectl get pv
kubectl get storageclass
```

If everything is running correctly, WordPress should now be deployed with RWX support using Filestore on GKE.


