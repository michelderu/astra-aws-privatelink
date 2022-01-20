variable "database_name" {
  description = "Astra database name"
  type        = string
}

variable "keyspace" {
  description = "Initial keyspace"
  type        = string
}

variable "cloud_provider" {
  description = "Cloud provider to deploy the database to"
  type        = string
}

variable "regions" {
  description = "Region or regions to deploy the database to"
  type        = list
}