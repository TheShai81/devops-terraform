output "container_name" {
  value = docker_container.jenkins.name
}

output "volume_name" {
  value = docker_volume.jenkins_home.name
}