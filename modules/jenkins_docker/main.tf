resource "docker_volume" "jenkins_home" {
  name = "${var.container_name}-home"
}

resource "docker_image" "jenkins" {
  name = var.image
}

resource "docker_container" "jenkins" {
  name  = var.container_name
  image = docker_image.jenkins.image_id

  restart = "unless-stopped"

  ports {
    internal = 8080
    external = var.host_port
  }

  # volumes {
  #   host_path      = "//var/run/docker.sock"
  #   container_path = "/var/run/docker.sock"
  # }

  volumes {
    volume_name    = docker_volume.jenkins_home.name
    container_path = "/var/jenkins_home"
  }
}