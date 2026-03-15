resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  dns_prefix          = "terraformaksunir"
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B4ls_v2"
  }
  identity {
    type = "SystemAssigned"
  }
  role_based_access_control_enabled = true

  tags = {
    environment = "casopractico2"
  }

}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}

