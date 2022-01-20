// Output the service name to be used in AWS
output "servicename" {
  value = astra_private_link.dev.service_name
}