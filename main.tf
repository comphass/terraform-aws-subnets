locals {
  env = terraform.workspace == "default" ? "lab" : terraform.workspace
}

