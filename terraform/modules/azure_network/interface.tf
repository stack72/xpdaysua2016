variable "resource_group_name" {
  type = "string"
}
variable "azure_region" {
  type = "string"
}

output "resource_group_name" {
  value = "${var.resource_group_name}"
}
output "subnet_id" {
  value = "${azurerm_subnet.test.id}"
}
