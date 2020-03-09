variable "environment" {
  description = "Environment this resource belongs to"
  default     = ""
  type        = string
}

variable "projectname" {
  description = "Name of the project"
  default     = "poc"
  type        = string
}

variable "identifier" {
  description = "The name of the RDS instance"
  type        = string
  default     = "testing-01"
}
