variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "mensagem" {
	description = "Digitar a mensagem a aparecer no servidor Web"
	type = string
}


variable "chavedeacesso" {
	description = "Digitar a access key"
	type = string
}

variable "chavesecreta" {
	description = "Digitar a secret key"
	type = string
}