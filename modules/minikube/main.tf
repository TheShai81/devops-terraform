resource "null_resource" "minikube_start" {
  triggers = {
    profile = var.profile
    driver  = var.driver
    cpus    = tostring(var.cpus)
    memory  = tostring(var.memory)
    ingress = tostring(var.enable_ingress)
  }

  provisioner "local-exec" {
    interpreter = ["PowerShell", "-NoProfile", "-Command"]
    command = <<-PS
      $ErrorActionPreference = "Stop"

      minikube start --profile "${var.profile}" --driver="${var.driver}" --cpus=${var.cpus} --memory=${var.memory}

      if ("${var.enable_ingress}" -eq "true") {
        minikube addons enable ingress --profile "${var.profile}"
      }

      kubectl config use-context "devops"
    PS
  }
}