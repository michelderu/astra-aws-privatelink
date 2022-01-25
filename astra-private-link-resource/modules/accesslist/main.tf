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

// Restrict public access
resource "astra_access_list" "access" {
  database_id = var.database_id
  addresses {
    request {
      address = "0.0.0.0/0"
      enabled = true
    }
  }
}