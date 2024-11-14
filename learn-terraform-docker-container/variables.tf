variable "container_name" {
  description = "Value of the name for the docker container"
  type = string
  default = "terraform_docker_tutorial"
}

variable "container_external_port" {
  description = "Value of the name for the docker container"
  type = number
  default = 8080
}