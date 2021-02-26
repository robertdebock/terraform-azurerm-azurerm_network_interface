variable "name" {
  description = "The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Optional) A string for the location of the resource group."
  type        = string
  default     = "west europe"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created."
  type        = string
}

variable "ip_configuration_name" {
  description = "A name used for this IP Configuration"
  type        = string
}

variable "ip_configuration_subnet_id" {
  description = "The ID of the Subnet where this Network Interface should be located in."
  type        = string
}

variable "ip_configuration_private_ip_address_allocation" {
  description = "The IP Version to use. Possible values are 'IPv4' or 'IPv6'. Defaults to 'IPv4'."
  type        = string
  default     = "IPv4"
}

variable "ip_configuration_public_ip_address_id" {
  description = "Reference to a Public IP Address to associate with this NIC."
  type        = string
}

variable "dns_servers" {
  description = "A list of IP Addresses defining the DNS Servers which should be used for this Network Interface."
  type        = list
  default     = []
}

variable "enable_ip_forwarding" {
  description = "Should IP Forwarding be enabled? Defaults to 'false'."
  type        = bool
  default     = false
}

variable "enable_accelerated_networking" {
  description = "Should Accelerated Networking be enabled? Defaults to 'false'."
  type        = bool
  default     = false
}

variable "internal_dns_name_label" {
  description = "Should Accelerated Networking be enabled? Defaults to 'false'."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map
  default     = {}
}
