variable "container_name" { type = string }
variable "image"          { type = string }
variable "host_port"      { type = number }

variable "mysql_database"      { type = string }
variable "mysql_user"          { type = string }
variable "mysql_password"      { type = string }
variable "mysql_root_password" { type = string }