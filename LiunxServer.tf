resource "aws_instance" "ServerA" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.GrupodeSeguranca.id]
  

      user_data = <<-EOF
                  #!/bin/bash
                  echo "${var.mensagem}" > index.html
                  nohup busybox httpd -fp "${var.server_port}" &
                  EOF
  
    tags = { 
    Name = "3rdTestedeCriacao" 
  }
}

resource "aws_security_group" "GrupodeSeguranca" {
  name = "Grupo-de-seguranca-ex"
  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "O IP publico para acesso a este servidor e:"
}