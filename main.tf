// Your main module resource goes here
resource "azurerm_resource_group" "this" {
  name       = var.resource_group_name
  location   = var.region
  managed_by = var.managed_by != "" ? var.managed_by : null
  tags       = local.tags
}