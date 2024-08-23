locals {
  resource_group_name = "${var.project_name}-rg-${random_integer.suffix.result}"
  vnet_name           = "${var.project_name}-vnet-${random_integer.suffix.result}"
  subnet_name         = "${var.project_name}-subnet-${random_integer.suffix.result}"
}