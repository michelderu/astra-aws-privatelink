// Output the service name to be used in AWS
output "service_name" {
  value = astra_private_link.link.service_name
}