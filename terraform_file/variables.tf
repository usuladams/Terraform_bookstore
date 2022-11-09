variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "num_of_instance" {
  type = number
}

variable "tag" {
  type = string
  default = "Web Server of Bookstore"
}

variable "server-name" {
  type = string
  default = "paul-docker-instance"
}

variable "docker-instance-ports" {
  type = list(number)
  description = "docker-instance-sec-gr-inbound-rules"
  default = [22, 80, 443]
}