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

// Create a service account role
resource "astra_role" "rw-svc-account" {
  role_name   = "rw-svc-account"
  description = "R/W Service Account"
  effect      = "allow"
  resources   = ["drn:astra:org:${var.organization_id}"]
  policy      = ["accesslist-read", "db-all-keyspace-describe", "db-graphql", "db-cql", "db-keyspace-describe", "db-rest", "db-table-describe", "db-table-modify", "db-table-select"]
}

// Create a token for the service account role
resource "astra_token" "svc-account-token" {
  roles = ["${astra_role.rw-svc-account.id}"]
}