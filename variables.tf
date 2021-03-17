variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
}

variable "WindowsServer" {
	default = ami-061f91e66b9d14761
}

variable "LinuxServer" {
	default = ami-0c55b159cbfafe1f0
}

variable "tipo_servidor" {
	description = "Escolher o tipo de servidor a subir: Linux ou Windows"
	type = list(string)
	default = [var.WindowsServer, var.LinuxServer]
}

variable "mensagem" {
	description = "Digitar a mensagem a aparecer no servidor Web"
	type = string
}
