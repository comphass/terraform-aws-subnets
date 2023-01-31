resource "aws_instance" "web" {
  count = lookup(var.instance, local.env)["number"]

  ami           = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "Minha máquina web ${local.env}"
    Env  = local.env
  }
}