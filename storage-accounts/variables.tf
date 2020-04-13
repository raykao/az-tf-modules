variable "prefix" {
  description = "Prefix"
  default = ""
}

variable "resource_group_name" {
  description = "Name of Custom Image Storage Account Resource Group, without a prefix."
}

variable "location" {
  description = "Location of Custom Image Storage Account"
}

variable "storage_account_name" {
  description = "Name for storage account"
  default = "cusmangimg"
}

variable "storage_container_name" {
  description = "Name for storage container"
  default = "custom-managed-images"
}