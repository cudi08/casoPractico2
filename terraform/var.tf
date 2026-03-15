variable "location" {
  description = "Region donde se desplegara la infraestructura"
  type        = string
  default     = "francecentral"
}

variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
  default     = "rg"
}

variable "vm_name" {
  description = "Nombre de la maquina virtual"
  type        = string
  default     = "vm-CP2"
}

variable "acr_name" {
  description = "Nombre del Azure Container Registry"
  type        = string
  default     = "acrcp2unir"
}

variable "aks_name" {
  description = "Nombre del Azure Kubernetes Service"
  type        = string
  default     = "akscp2unir"
}
