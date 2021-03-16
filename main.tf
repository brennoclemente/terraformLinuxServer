provider "aws" {
  region = "us-east-2"
}

# This general syntax for terraform
# resource "<PROVIDER>_<TYPE>" "<NAME>" {
# [CONFIG …]
# }

resource "aws_instance" "ServerA" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  
    tags = { 
    Name = "1stServerCreate" 
  }
}

