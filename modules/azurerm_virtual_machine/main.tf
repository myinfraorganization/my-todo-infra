data "azurerm_subnet" "mydevSubnet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}
data "azurerm_public_ip" "myPublicIP" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
}
resource "azurerm_network_interface" "nic" {
  name = var.network_interface_name
  location = var.network_interface_location
 resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.mydevSubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.myPublicIP.id
  }
}
#frontend Virtual Machine
resource "azurerm_linux_virtual_machine" "frontendVM" {
  name = var.virtual_machine_name
  resource_group_name = var.resource_group_name
   location = var.virtual_machine_location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Pwd@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical" 
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}