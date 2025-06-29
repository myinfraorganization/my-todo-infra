variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}
variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the public IP will be created."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the public IP will be created."
  type        = string
}
variable "network_interface_name" {
  description = "The name of the Network Interface."
  type        = string
}
variable "network_interface_location" {
  description = "The Azure region where the network interface will be created."
  type        = string
}
variable "public_ip_name" {
  description = "The name of public Ip"
  type        = string
}
variable "virtual_machine_name" {
  description = "The name of the virtual machine."
  type        = string
}
variable "virtual_machine_location" {
  description = "The Azure region where Virtual machine will be created"
  type        = string
}