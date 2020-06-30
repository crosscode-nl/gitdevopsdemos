# gitdevopsdemos
gitops/devops/devsecops demo repo

## Demo1

### Argo CD

Argo CD installs application into a Kubernetes based on repository resources. It will monitor differences and provides a nice UI to manage the applications. 

1. Install Argo CD

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

2. Access Argo CD

Forward port:

``` 
kubectl port-forward svc/argocd-server -n argocd 8080:443
``` 

Access UI at: ```https://localhost:8080``` 

Login with admin and password from ```kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2``` 

3. Create project kafka



