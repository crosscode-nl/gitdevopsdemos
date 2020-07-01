# gitdevopsdemos
gitops/devops/devsecops demo repo

## Demo1

### Installation

Argo CD installs application into a Kubernetes based on repository resources. It will monitor differences and provides a nice UI to manage the applications. 

This demo tries to show how quickly you can spin-up a cluster once it is defined in git.

Requirementes: 

New kubernetes cluster (VMWare/Cloud/What you want)

Working kubectl with full admin rights. 

Run:

``` 
boot.sh
``` 

This will do some initial bootstrapping and bring up your cluster. 

Installing or updating applications your cluster from now on is managed by Argo CD.

See Argo CD documentation for how this works, but in short: 

Argo CD will use repositories as a source of truth. It will detect changes and can either manually or automatically.

You install applicatons by defining an application resource. This demo uses the app in an app pattern. That means that in order to create an app you can add aan resource in demo1/argocd/apps

***If you fork this repo you need to update all repoURL's in all applications under demo1/argocd/apps before running boot.sh***



