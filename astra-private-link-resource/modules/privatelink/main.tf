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

// Connect to the Private Endpoint
resource "astra_private_link_endpoint" "example" {
  database_id   = var.database_id
  datacenter_id = "${var.database_id}-1"
  endpoint_id   = var.endpoint_id
}