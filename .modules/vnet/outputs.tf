output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.main.name
}

output "subnet_name" {
  description = "The name of the Subnet"
  value       = azurerm_subnet.main.name
}