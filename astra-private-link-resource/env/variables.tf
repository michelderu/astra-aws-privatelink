variable "astra_organization_id" {
  description = "Organization ID to create the service account in"
  type        = list
  default     = ["drn:astra:org:a056b285-9d65-430a-bf68-3778e99f8a6c"]
}

variable "name" {
  description = "Project prefix name"
  type        = string
  default     = "private_link_test"
}

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
  description = "Cloud provider to deploy the database to"
  type        = string
  default     = "AWS"
}

variable "regions" {
  description = "Region or regions to deploy the database to"
  type        = list
  default     = ["eu-central-1"]
}