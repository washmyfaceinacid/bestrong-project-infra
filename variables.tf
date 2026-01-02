variable "location" {
  description = "Azure region"
  default     = "switzerlandnorth"
}

variable "project_name" {
  description = "Project name"
  default     = "bestrong"
}

variable "sql_admin_login" {
  sensitive = true
}

variable "sql_admin_password" {
  sensitive = true
}

variable "access_key" {
  sensitive = true
}