variable "project_name" {
  type    = string
  default = "devops-ecommerce"
}

variable "dockerhub_repo_prefix" {
  type    = string
  default = "shaileshbolduc"
}

variable "services" {
  description = "Service ports for local dev / CI outputs"
  type = map(object({
    port = number
  }))
}

variable "minikube_profile" {
  type    = string
  default = "devops"
}

variable "minikube_driver" {
  type    = string
  default = "docker"
}

variable "minikube_cpus" {
  type    = number
  default = 2
}

variable "minikube_memory" {
  type    = number
  default = 4096
}

variable "enable_ingress_addon" {
  type    = bool
  default = true
}

# MySQL
variable "mysql_image" {
  type    = string
  default = "mysql:8.0"
}

variable "mysql_container_name" {
  type    = string
  default = "devops-mysql"
}

variable "mysql_port" {
  type    = number
  default = 3306
}

variable "mysql_database" {
  type    = string
  default = "devops_project"
}

variable "mysql_user" {
  type    = string
  default = "devops_user"
}

variable "mysql_password" {
  type    = string
  default = "devops_pass"
}

variable "mysql_root_password" {
  type    = string
  default = "rootpass"
}

variable "enable_jenkins" {
  type    = bool
  default = true
}

variable "jenkins_container_name" {
  type    = string
  default = "devops-jenkins"
}

variable "jenkins_image" {
  type    = string
  default = "jenkins/jenkins:lts"
}

variable "jenkins_port" {
  type    = number
  default = 8080
}