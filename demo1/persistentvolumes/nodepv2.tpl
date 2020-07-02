apiVersion: v1
kind: PersistentVolume
metadata:
  name: ${NODENAME}pv2
spec:
  capacity:
    storage: 5Gi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  storageClassName: local
  persistentVolumeReclaimPolicy: Retain
  local:
    path: /var/lib/volumeclaim2
  nodeAffinity:
    required:
      nodeSelectorTerms:
      - matchExpressions:
        - key: kubernetes.io/hostname
          operator: In
          values:
          - ${NODENAME}

