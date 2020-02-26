variable "instance_name" {
    type = string
}

variable "instance_count" {
    type    = number
    default = 1
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
}

variable "monitoring" {
  type    = bool
  default = true
}

variable "vpc_security_group_ids" {
  type    = list(string)
}

variable "subnet_id" {
  type    = string
}

variable "tags" {
  type = map
}
