// hostname     = "app.terraform.io"
// organization = "comphass"
// workspaces { Name = "sorting-hat-api-prod" }

bucket = "tfstate-comphass-554952154630"
key = "terraform-aws-subnets/terraform.tfstate"
region = "us-east-1"
dynamodb_table = "tflock-tfstate-comphass-554952154630"