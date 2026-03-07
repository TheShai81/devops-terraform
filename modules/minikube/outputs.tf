output "profile" {
  value = var.profile
}

output "kubeconfig_path" {
  value = "$env:USERPROFILE\\.kube\\config"
}

output "kubectl_context" {
  value = "minikube"
}