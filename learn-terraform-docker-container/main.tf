terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 3.0.2"
        }
    }
}

provider "docker" {
  
}

# This pull a nginx docker image. Like docker pull nginx:latest
resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name = var.container_name

  ports {
    internal = 80
    external = 8000
  }
}


