variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "dda"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "devops-django-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "jmsgoytia@gmail.com"
}

variable "db_username" {
  description = "Username for the dda api database"
  default     = "dda"
}

variable "db_password" {
  description = "Password for the Terraform database"
}

variable "ecr_proxy_image" {
  description = "Path to the ECR repo with the proxy image"
}

variable "ecr_app_image" {
  description = "Path to ECR repo with the API image"
}

variable "django_secret_key" {
  description = "Secret key for Django"
}

variable "dns_zone_name" {
  description = "Domain name"
  default     = "placeholderdomain.net"
}

variable "subdomain" {
  description = "Subdomain for each environment"
  type        = map(string)

  default = {
    prod    = "api"
    staging = "api.staging"
    dev     = "api.dev"
  }
}
