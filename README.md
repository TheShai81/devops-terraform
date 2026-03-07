# DevOps Final Project Phase 4: Infrastructure as Code with Terraform

This repository gives the project modules (Minikube, MySQL container, Jenkins, local resources), dev/staging/prod workspaces, env-separated states, tfvars for each environment, and outputs for Jenkins.

The local backend supports a local lock during operations.

To backup before risky changes, you can run the below Powershell script:

```
$ts = Get-Date -Format "yyyyMMdd-HHmmss"
New-Item -ItemType Directory -Force -Path "state-backups\dev" | Out-Null
Copy-Item "state\dev\terraform.tfstate" "state-backups\dev\terraform.tfstate.$ts"
```