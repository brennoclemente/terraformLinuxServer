variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "W_Server" {
	default = ["ami-061f91e66b9d14761"]
}

variable "L_Server" {
	default = ["ami-0c55b159cbfafe1f0"]
}

variable "tipo_servidor" {
	description = "Escolher o tipo de servidor a subir: Linux ou Windows"
	type = list(string)
	default = [var.W_Server, var.L_Server]
}

variable "mensagem" {
	description = "Digitar a mensagem a aparecer no servidor Web"
	type = string
}
