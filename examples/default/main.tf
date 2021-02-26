module "azurerm_resource_group" {
  source  = "robertdebock/azurerm_resource_group/azurerm"
  version = "2.0.0"
  name    = "test_rg"
}

module "azurerm_virtual_network" {
  source              = "robertdebock/azurerm_virtual_network/azurerm"
  version             = "2.0.0"
  name                = "test_vnet"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = module.azurerm_resource_group.name
}

module "azurerm_subnet" {
  source               = "robertdebock/azurerm_subnet/azurerm"
  version              = "2.0.0"
  name                 = "test_subnet"
  resource_group_name  = module.azurerm_resource_group.name
  virtual_network_name = module.azurerm_virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

module "azurerm_public_ip" {
  source              = "robertdebock/azurerm_public_ip/azurerm"
  version             = "2.0.0"
  name                = "test_public_ip"
  resource_group_name = module.azurerm_resource_group.name
}

module "azurerm_network_security_group" {
  source              = "robertdebock/azurerm_network_security_group/azurerm"
  version             = "2.0.0"
  name                = "test_network_security_group"
  resource_group_name = module.azurerm_resource_group.name
}

module "azurerm_network_security_rule" {
  source                      = "robertdebock/azurerm_network_security_group/azurerm"
  version                     = "2.0.0"
  name                        = "test_network_security_rule"
  # TODO: When `network_security_group_name` is set:
  # Error: Unsupported argument
  # An argument named "network_security_group_name" is not expected here.
  # network_security_group_name = module.azurerm_network_security_group.name
  resource_group_name         = module.azurerm_resource_group.name
}

module "azurerm_network_interface" {
  source                                         = "../../"
  name                                           = "test_network_interface"
  resource_group_name                            = module.azurerm_resource_group.name
  ip_configuration_name                          = "test_ip_configuration"
  ip_configuration_subnet_id                     = module.azurerm_subnet.id
  ip_configuration_private_ip_address_allocation = "dynamic"
  ip_configuration_public_ip_address_id          = module.azurerm_public_ip.id
}

output "all" {
  value = module.azurerm_network_interface.*
}
