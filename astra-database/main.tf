# Create Astra DB
module "db" {
  source          = "./modules/db"
  database_name   = var.database_name
  keyspace        = var.keyspace
  cloud_provider  = var.cloud_provider
  regions         = var.regions
}

# Create Service Account
module "iam" {
  source          = "./modules/iam"
  organization_id = module.db.organization_id
}

# Create Private Link Resource
module "privatelink" {
  source              = "./modules/privatelink"
  allowed_principals  = var.allowed_principals
  database_id         = module.db.database_id
}