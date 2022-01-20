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
  depends_on      = [module.db]
  source          = "./modules/iam"
  organization_id = module.db.organization_id
}

# Create Private Link Resource
module "privatelink" {
  depends_on          = [module.db]
  source              = "./modules/privatelink"
  allowed_principals  = var.allowed_principals
  datacenter_id       = module.db.database_id
}