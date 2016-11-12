resource "azurerm_resource_group" "test" {
    name = "${var.resource_group_name}"
    location = "${var.azure_region}"
}

resource "azurerm_virtual_network" "test" {
    name = "acctvn"
    address_space = ["10.0.0.0/16"]
    location = "${var.azure_region}"
    resource_group_name = "${azurerm_resource_group.test.name}"
}

resource "azurerm_subnet" "test" {
    name = "acctsub"
    resource_group_name = "${azurerm_resource_group.test.name}"
    virtual_network_name = "${azurerm_virtual_network.test.name}"
    address_prefix = "10.0.2.0/24"
}

resource "azurerm_network_interface" "test" {
    name = "acctni"
    location = "${var.azure_region}"
    resource_group_name = "${azurerm_resource_group.test.name}"

    ip_configuration {
    	name = "testconfiguration1"
    	subnet_id = "${azurerm_subnet.test.id}"
    	private_ip_address_allocation = "dynamic"
    }
}
