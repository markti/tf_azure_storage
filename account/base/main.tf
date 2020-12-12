resource "azurerm_storage_account" "storage_account" {

  name                      = "${var.name}${random_string.random.result}"
  resource_group_name       = var.resource_group_name

  location                  = var.location
  account_tier              = var.tier
  account_replication_type  = var.type
  allow_blob_public_access  = var.security_settings.allow_blob_public_access
  min_tls_version           = var.security_settings.min_tls_version

  tags = {
    app = var.app_name
    env = var.env_name
  }

}


resource "random_string" "random" {
  length = 8
  special = false
  lower = true
  upper = false
}