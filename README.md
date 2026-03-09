# DevOps Final Project Phases 4 & 5: Infrastructure as Code with Terraform and Kubernetes Deployments

This repository gives the project modules (Minikube, MySQL container, Jenkins, local resources), dev/staging/prod workspaces, env-separated states, tfvars for each environment, and outputs for Jenkins.

The local backend supports a local lock during operations.

To backup before risky changes, you can run the below Powershell script:

```
$ts = Get-Date -Format "yyyyMMdd-HHmmss"
New-Item -ItemType Directory -Force -Path "state-backups\dev" | Out-Null
Copy-Item "state\dev\terraform.tfstate" "state-backups\dev\terraform.tfstate.$ts"
```

The Kubernetes manifests reside in the `./k8s/base/` directory. These manifests use a rolling update for any changes to the microservices.

You can use `kubectl_apply_script.ps1` to reconfigure the namespaces if you make changes to the manifests. Just run it once for each namespace you want to change, though, by changing the namespace directly in the script. You can also use `rollout_script.ps1` to actually gradually deploy the changes to each pod. Again, just run it once for each namespace by changing the name directly in the script.