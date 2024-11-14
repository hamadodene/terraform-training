# TERRAFORM TRAINING

docs https://developer.hashicorp.com/terraform

## Some command

```
# initialize terraform project
terraform init
```

```
# deploy
terraform apply
```

```
# destroy -- This will delete all resources created
terraform destroy
```

#### Terraform variable
terraform docker variable example here https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-variables

variables can be defined in a file call `variables.tf` with a content like:

```
variable "container_external_port" {
  description = "Variable description"
  type        = string
  default     = "default_value"
}
```

Variable can be call in `main.tf` in this way:
```
resource "docker_container" "nginx" {
 ---
  ports {
    external = var.container_external_port
  }
}

```

## Terraform workspace
By default we have a default workspace call "default". If you want to have different config based to enviroment (like dev, prod, staging) you can use workspaces.

```
# List workspaces
terraform workspace list

# Create new workspace
terraform workspace new workspace_name

# Move to another workspace
terraform workspace select workspace_name

# Delete workspace
terraform workspace delete workspace_name

# Show current workspace
terraform workspace show
```
