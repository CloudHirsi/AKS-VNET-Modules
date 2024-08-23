# Generate a random suffix for resource names
resource "random_integer" "suffix" {
  min = 1000
  max = 9999
}

# Create a resource group for the AKS cluster
resource "azurerm_resource_group" "aks" {
  name     = local.resource_group_name
  location = var.location
}

# Create the AKS cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.aks_cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = local.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.project_name
  }
}