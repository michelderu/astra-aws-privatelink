// Output the created database id
output "database_id" {
  value = module.db.database_id
}

// Output the organization id
output "organization_id" {
  value = module.db.organization_id
}

// Output the download location for the secure connect bundle
output "secure_connect_bundle_url" {
  value = module.db.secure_connect_bundle_url
}

// Output the created client_id
output "client_id" {
  value = module.iam.client_id
}

// Output the created secret
output "secret" {
  value = module.iam.secret
}

// Output the created token
output "token" {
  value = module.iam.token
}

// Output the service name to be used in AWS
output "servicename" {
  value = module.privatelink.servicename
}