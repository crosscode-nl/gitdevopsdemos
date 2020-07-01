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

This script will:

1. Install Argo CD on your cluster
2. Create initial projects in Argo CD
3. Create initial applications in Argo CD

From this point Argo CD will do the rest and your cluster can be managed from repositories. 

Installing or updating applications your cluster from now on is managed by Argo CD.

See Argo CD documentation for how this works, but in short: 

Argo CD will use repositories as a source of truth. It will detect changes and can either manually or automatically.

You install applicatons by defining project and application resources in the repository, because this demo uses the app in app pattern.

In order to create an app you create an application resource under:  demo1/argocd/apps

In order to create a project you create a project resource under: demo1/arcocd/projects

If you use the UI to create a project or application do not forget to add these resource to your git repo as well, otherwise this is work you have to again once you need to spin up a cluster. In other ways, don't use the UI. ;) 

***If you fork this repo you need to update all repoURL's in all applications under demo1/argocd/apps before running boot.sh***



