module "minikube" {
  source = "./modules/minikube"

  profile      = var.minikube_profile
  driver       = var.minikube_driver
  cpus         = var.minikube_cpus
  memory       = var.minikube_memory
  enable_ingress = var.enable_ingress_addon
}

module "mysql" {
  source = "./modules/mysql_docker"

  container_name = "${var.mysql_container_name}-${terraform.workspace}"
  image          = var.mysql_image
  host_port      = var.mysql_port

  mysql_database      = var.mysql_database
  mysql_user          = var.mysql_user
  mysql_password      = var.mysql_password
  mysql_root_password = var.mysql_root_password
}

module "jenkins" {
  source = "./modules/jenkins_docker"
  count  = var.enable_jenkins ? 1 : 0

  container_name = "${var.jenkins_container_name}-${terraform.workspace}"
  image          = var.jenkins_image
  host_port      = var.jenkins_port
}