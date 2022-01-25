# Accept Private Endpoint
module "privatelink" {
  source       = "./modules/privatelink"
  database_id  = var.database_id
  endpoint_id  = var.endpoint_id
}

# Restrict public access
module "accesslist" {
  source       = "./modules/accesslist"
  database_id  = var.database_id
}