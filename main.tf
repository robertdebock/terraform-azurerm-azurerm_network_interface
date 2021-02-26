resource "azurerm_network_interface" "default" {
  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.ip_configuration_subnet_id
    private_ip_address_allocation = var.ip_configuration_private_ip_address_allocation
    public_ip_address_id          = var.ip_configuration_public_ip_address_id
  }
  dns_servers                     = var.dns_servers
  enable_ip_forwarding            = var.enable_ip_forwarding
  enable_accelerated_networking   = var.enable_accelerated_networking
  internal_dns_name_label         = var.internal_dns_name_label
  tags                            = var.tags
}
