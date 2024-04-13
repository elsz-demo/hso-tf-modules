/*
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags

}
*/

resource "azapi_resource" "rg" {
  parent_id = "/subscriptions/${var.subscription_id}"
  type      = "Microsoft.Resources/resourceGroups@2021-04-01"
  name      = var.resource_group_name
  location  = var.location
  body      = jsonencode({})
  tags      = var.tags
}

