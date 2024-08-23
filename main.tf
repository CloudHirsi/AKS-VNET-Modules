module "Vnet" {
  source                = "./.modules/vnet"
  project_name          = "ModulesProject"
  location              = "West Europe"
  vnet_address_space    = ["10.1.0.0/16"]
  subnet_address_prefix = ["10.1.1.0/24"]
}

module "aks" {
  source       = "./.modules/aks"
  project_name = "ModulesProject"
  location     = "East US"
  node_count   = 2
  node_vm_size = "Standard_DS2_v2"
}