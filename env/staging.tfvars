services = {
  frontend = { port = 20000 }
  product  = { port = 20001 }
  order    = { port = 20002 }
}

minikube_cpus   = 2
minikube_memory = 4096

enable_jenkins = false
jenkins_port   = 18080

mysql_port = 33306