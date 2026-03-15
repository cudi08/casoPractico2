output "vm_public_ip" {
  description = "IP publica de la VM"
  value       = azurerm_public_ip.my_terraform_public_ip.ip_address
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.name
}

output "resource_group" {
  value = azurerm_resource_group.rg.name
}

output "ssh_private_key" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}

output "acr_login_server" {
  description = "URL del Azure Container Registry"
  value       = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  value = azurerm_container_registry.acr.admin_username
}

output "acr_admin_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}
