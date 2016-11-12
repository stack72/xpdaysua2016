resource "azurerm_virtual_machine_scale_set" "test" {
  name = "acctvmss"
  location = "${var.azure_region}"
  resource_group_name = "${var.resource_group_name}"
  upgrade_policy_mode = "Manual"

  sku {
    name = "${var.machine_type}"
    tier = "Standard"
    capacity = 3
  }

  os_profile {
    computer_name_prefix = "${var.computer_name_prefix}"
    admin_username = "${var.admin_username}"
    admin_password = "${var.admin_password}"
  }

  network_profile {
      name = "TestNetworkProfile"
      primary = true
      ip_configuration {
        name = "TestIPConfiguration"
        subnet_id = "${var.subnet_id}"
      }
  }

  storage_profile_os_disk {
    name = "osDiskProfile"
    caching       = "ReadWrite"
    create_option = "FromImage"
    vhd_containers = ["${var.vhd_container}"]
  }

  storage_profile_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "14.04.2-LTS"
    version   = "latest"
  }
}
