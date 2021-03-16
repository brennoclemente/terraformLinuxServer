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
  vpc_security_group_ids = [aws_security_group.instance.id]
  
  user_data = << - EOF 
             #! / bin / bash 
             echo "Olá, Mundo"> index.html 
             nohup busybox httpd -f -p 8080 & 
             EOF
  
    tags = { 
    Name = "2ndTestedeCriacao" 
  }
}

resource "aws_security_group" "GrupodeSeguranca" {
  name = "Grupo-de-seguranca-ex"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
