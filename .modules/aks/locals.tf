locals {
  resource_group_name = "${var.project_name}-aks-rg-${random_integer.suffix.result}"
  aks_cluster_name    = "${var.project_name}-aks-${random_integer.suffix.result}"
  dns_prefix          = "${var.project_name}-dns-${random_integer.suffix.result}"
}