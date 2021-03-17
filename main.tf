provider "aws" {
  region = "us-east-2"
  access_key = "${var.chavedeacesso}"
  secret_key = "${var.chavesecreta}"
}

# This general syntax for terraform
# resource "<PROVIDER>_<TYPE>" "<NAME>" {
# [CONFIG …]
# }


