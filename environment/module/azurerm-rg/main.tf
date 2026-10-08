resource "azurerm_resource_group" "rg1" {
    for_each = var.rgs
    name = each.value.rg-name
    lacation = each.value.location
}