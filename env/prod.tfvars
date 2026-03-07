services = {
  frontend = { port = 20000 }
  product  = { port = 20001 }
  order    = { port = 20002 }
}

minikube_cpus   = 4
minikube_memory = 6144

enable_jenkins = false
jenkins_port   = 28080

mysql_port = 23306