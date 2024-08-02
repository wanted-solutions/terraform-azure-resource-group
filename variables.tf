variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "region" {
  description = "The location/region where the resources will be created."
  type        = string
}

variable "managed_by" {
  description = "The ID of the resource that manages this resource group."
  type        = string
  default     = ""
}