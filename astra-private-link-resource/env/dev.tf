# Create Astra DB
module "db" {
  source          = "../modules/db"
  database_name   = var.database_name
  keyspace        = var.keyspace
  cloud_provider  = var.cloud_provider
  regions         = var.regions
}

# Create Service Account
module "iam" {
  source                = "../modules/iam"
  name                  = var.name
  astra_organization_id = var.astra_organization_id
}