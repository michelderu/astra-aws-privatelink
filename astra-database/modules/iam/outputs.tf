// Output the created client_id
output "client_id" {
  value = astra_token.svc-account-token.client_id
}

// Output the created secret
output "secret" {
  value = astra_token.svc-account-token.secret
}

// Output the created token
output "token" {
  value = astra_token.svc-account-token.token
}