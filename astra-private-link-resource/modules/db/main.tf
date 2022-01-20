# Terraform provider
terraform {
  required_version = ">= 0.14"

  required_providers {
    astra = {
      source = "datastax/astra"
      version = "2.0.2"
    }
  }
}

// Create the database and initial keyspace
resource "astra_database" "dev" {
  name           = var.database_name
  keyspace       = var.keyspace
  cloud_provider = var.cloud_provider
  regions        = var.regions
}

// Get the location of the secure connect bundle
data "astra_secure_connect_bundle_url" "dev" {
  database_id = astra_database.dev.id
}