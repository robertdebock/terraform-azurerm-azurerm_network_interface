output "applied_dns_servers" {
  description = "If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set."
  value       = azurerm_network_interface.default.applied_dns_servers
}

output "id" {
  description = "The ID of the Network Interface."
  value       = azurerm_network_interface.default.id
}

output "internal_domain_name_suffix" {
  description = "Even if 'internal_dns_name_label' is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of 'internal_domain_name_suffix'."
  value       = azurerm_network_interface.default.internal_domain_name_suffix
}

output "mac_address" {
  description = "The Media Access Control (MAC) Address of the Network Interface."
  value       = azurerm_network_interface.default.mac_address
}

output "private_ip_address" {
  description = "The first private IP address of the network interface."
  value       = azurerm_network_interface.default.private_ip_address
}
