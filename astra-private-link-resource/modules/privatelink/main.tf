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
  database_id        = "a6bc9c26-e7ce-424f-84c7-0a00afb12588"
  datacenter_id      = "a6bc9c26-e7ce-424f-84c7-0a00afb12588"
}