variable "aws_region" {
  description = "AWS region were the resources will be created"

  type = object({
    lab = string
    dev = string
  })

  default = {
    dev = "us-east-1"
    lab = "us-east-1"
  }
}

variable "instance" {
  description = "Instance configuration per workspace"

  type = object({
    lab = object({
      ami    = string
      type   = string
      number = number
    })

    dev = object({
      ami    = string
      type   = string
      number = number
    })
  })

  default = {
    lab = {
      ami    = "ami-00874d747dde814fa"
      number = 1
      type   = "t2.micro"
    }
    dev = {
      ami    = "ami-00874d747dde814fa"
      number = 2
      type   = "t2.micro"
    }
  }

}

# #create variable, specify type and set to default
# #create variable, specify type and set to default
# variable "awsprops" {
#   type = map(any)
#   default = {
#     region       = "us-east-1"
#     ami          = "ami-0b0dcb5067f052a63"
#     instancetype = "t2.micro"
#     az1          = "us-east-1a"
#     az2          = "us-east-1b"
#   }
# }

# # key variable for refrencing 
# variable "keyname" {
#   default = "NV_R_key"
# }

# # base_path for refrencing 
# variable "base_path" {
#   default = "/Users/mac/Desktop/terraform-projects/"
# }