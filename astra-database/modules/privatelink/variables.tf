variable "allowed_principals" {
  description = "Allowed principals from your AWS account"
  type        = list
}

variable "datacenter_id" {
  description = "Datacenter ID for which to create the private link resource"
  type        = string
}