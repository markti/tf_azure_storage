variable "resource_group_name" { }
variable "location" { }
variable "app_name" { }
variable "env_name" { }
variable "name" { }
variable "tier" { default = "Standard" }
variable "type" { default = "GRS" }

variable "allow_blob_public_access" {
  default = false 
}
variable "min_tls_version" {
  default = "TLS1_2"
}