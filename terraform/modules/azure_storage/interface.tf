variable "resource_group_name" {
  type = "string"
}
variable "azure_region" {
  type = "string"
}
variable "storage_account_type" {
  type = "string"
}
variable "storage_account_name" {
  type = "string"
}
variable "container_access_type" {
  type = "string"
}
variable "storage_container_name" {
  type = "string"
}


output "primary_blob_endpoint" {
  value = "${azurerm_storage_account.test.primary_blob_endpoint}"
}
output "storage_container_name" {
  value = "${azurerm_storage_container.test.name}"
}
