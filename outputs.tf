output "workspace" {
  value = terraform.workspace
}

output "minikube_profile" {
  value = module.minikube.profile
}

output "kubeconfig_path" {
  value = module.minikube.kubeconfig_path
}

output "kubectl_context" {
  value = module.minikube.kubectl_context
}

output "dockerhub_repo_prefix" {
  value = var.dockerhub_repo_prefix
}

output "service_urls" {
  value = {
    for name, svc in var.services :
    name => "http://localhost:${svc.port}"
  }
}

output "mysql" {
  value = {
    host     = "127.0.0.1"
    port     = module.mysql.host_port
    database = var.mysql_database
    user     = var.mysql_user
    container = module.mysql.container_name
    volume    = module.mysql.volume_name
  }
}

output "jenkins_url" {
  value = var.enable_jenkins ? "http://localhost:${var.jenkins_port}" : null
}