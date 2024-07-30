variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "dwp"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "daruma-webpage"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "develop@darumasoft.com"
}

variable "db_username" {
  description = "Username for the database"
  default     = "postgres"
}

variable "db_password" {
  description = "Password for the Terraform database"
}

variable "ecr_proxy_image" {
  description = "Path to ECR repo with the proxy image"
}

variable "ecr_server_image" {
  description = "Path to ECR repo with the server image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
}

variable "ssl_certificate" {
  description = "SSL certificate for RDS connection"
}

variable "dns_zone_name" {
  description = "Domain name"
  default     = "darumasoft.com"
}

variable "subdomain" {
  description = "Subdomain for each environment"
  type        = map(string)
  default = {
    "prod"    = "www."
    "staging" = "staging."
    "dev"     = "dev."
  }
}