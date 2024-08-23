# Define input variables
variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "location" {
  description = "Location for the AKS cluster"
  type        = string
  default     = "East US"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "node_vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
  default     = "Standard_DS2_v2"
}
