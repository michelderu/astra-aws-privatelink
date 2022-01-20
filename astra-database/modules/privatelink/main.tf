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

// Create a private link resource
resource "astra_private_link" "dev" {
  allowed_principals = var.allowed_principals
  database_id        = var.datacenter_id
  datacenter_id      = var.datacenter_id
}