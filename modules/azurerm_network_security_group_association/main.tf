

resource "azurerm_network_interface_security_group_association" "nsgassociation" {
  network_interface_id      = "/subscriptions/92e22e38-2f32-450c-97de-3c896645b2da/resourceGroups/ankitkumar_dev_rg/providers/Microsoft.Network/networkInterfaces/myNIC"

  network_security_group_id = "/subscriptions/92e22e38-2f32-450c-97de-3c896645b2da/resourceGroups/ankitkumar_dev_rg/providers/Microsoft.Network/networkSecurityGroups/mynsgsecgroup"
 
}