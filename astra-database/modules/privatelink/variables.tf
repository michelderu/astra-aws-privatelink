variable "allowed_principals" {
  description = "Allowed principals from your AWS account"
  type        = list
}

variable "database_id" {
  description = "Database ID for which to create the private link resource"
  type        = string
}