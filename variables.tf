variable "location" {
  description = "Azure region"
  default     = "westus3"
}

variable "project_name" {
  description = "Project name"
  default     = "bestrongproject"
}

variable "sql_admin_login" {
  sensitive = true
}

variable "sql_admin_password" {
  sensitive = true
}

