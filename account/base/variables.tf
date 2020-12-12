variable "resource_group_name" { }
variable "location" { }
variable "app_name" { }
variable "env_name" { }
variable "name" { }
variable "tier" { default = "Standard" }
variable "type" { default = "GRS" }

variable "security_settings" {
  type = object({
    allow_blob_public_access    = bool
    min_tls_version             = string
  })
  default = {
    allow_blob_public_access            = false
    min_tls_version                     = "TLS1_2"
  }

}