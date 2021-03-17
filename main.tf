provider "aws" {
  region = "us-east-2"
  access_key = "${var.chavedeacesso}" 
  secret_key = "${var.chavesecreta}"
}

#Já tivemos publicado aqui uma chave de acesso e secret key, porém com a necessidade de deixar o repositório publico, estas foram descomissionadas.
# This general syntax for terraform
# resource "<PROVIDER>_<TYPE>" "<NAME>" {
# [CONFIG …]
# }


