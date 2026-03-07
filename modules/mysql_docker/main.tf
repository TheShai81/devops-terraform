resource "docker_volume" "mysql_data" {
  name = "${var.container_name}-data"
}

resource "docker_image" "mysql" {
  name = var.image
}

resource "docker_container" "mysql" {
  name  = var.container_name
  image = docker_image.mysql.image_id

  restart = "unless-stopped"

  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_DATABASE=${var.mysql_database}",
    "MYSQL_USER=${var.mysql_user}",
    "MYSQL_PASSWORD=${var.mysql_password}",
  ]

  ports {
    internal = 3306
    external = var.host_port
  }

  volumes {
    volume_name    = docker_volume.mysql_data.name
    container_path = "/var/lib/mysql"
  }
}