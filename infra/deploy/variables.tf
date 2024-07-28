variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "develop@darumasoft.com"
}

variable "db_username" {
  description = "Username for the database"
  default     = "db_user"
}

variable "db_password" {
  description = "Password for the Terraform database"
}

variable "ecr_proxy_image" {
  description = "Path to ECR repo with the proxy image"
}

variable "ecr_app_image" {
  description = "Path to ECR repo with the app image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
}

variable "ssl_certificate" {
  description = "SSL certificate for RDS connection"
}