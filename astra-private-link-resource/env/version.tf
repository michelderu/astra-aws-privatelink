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

# Astra provider
# export ASTRA_API_TOKEN=<your-token> 
provider "astra" {
}
