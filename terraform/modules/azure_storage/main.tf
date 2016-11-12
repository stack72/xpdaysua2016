resource "azurerm_storage_account" "test" {
    name = "${var.storage_account_name}"
    resource_group_name = "${var.resource_group_name}"
    location = "${var.azure_region}"
    account_type = "${var.storage_account_type}"
}

resource "azurerm_storage_container" "test" {
    name = "${var.storage_container_name}"
    resource_group_name = "${var.resource_group_name}"
    storage_account_name = "${azurerm_storage_account.test.name}"
    container_access_type = "${var.container_access_type}"
}
