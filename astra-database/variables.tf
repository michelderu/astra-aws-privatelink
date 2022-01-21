variable "database_name" {
  description = "Astra database name"
  type        = string
  default     = "private_link_test"
}

variable "keyspace" {
  description = "Initial keyspace"
  type        = string
  default     = "private_link_test"
}

variable "cloud_provider" {
  description = "Cloud provider to deploy the database into"
  type        = string
  default     = "AWS"
}

variable "regions" {
  description = "Region or regions to deploy the database into"
  type        = list
  default     = ["eu-central-1"]
}

variable "allowed_principals" {
  description = "Allowed principals from your AWS account to set up Private Link"
  type        = list
  default     = ["arn:aws:iam::450929313340:user/privatelink"]
}