output "container_name" {
  value = docker_container.mysql.name
}

output "host_port" {
  value = var.host_port
}

output "volume_name" {
  value = docker_volume.mysql_data.name
}