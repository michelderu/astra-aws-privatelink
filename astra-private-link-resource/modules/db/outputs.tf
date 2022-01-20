// Output the created database id
output "database_id" {
  value = astra_database.dev.id
}

// Output the download location for the secure connect bundle
output "secure_connect_bundle_url" {
  value = data.astra_secure_connect_bundle_url.dev.url
}