module "rg" {
source = "../module/azurerm-rg"
rgs = var.rgs
}
module "storage" {
    depends_on = [ module.rg ]
    source = "../module/azurerm-storage"
storage_accounts = var.storages
}