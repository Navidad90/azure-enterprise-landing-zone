output "admin_role_assignment" {
  value = azurerm_role_assignment.admin_owner.id
}

output "dev_role_assignment" {
  value = azurerm_role_assignment.dev_contributor.id
}

output "auditor_role_assignment" {
  value = azurerm_role_assignment.auditor_reader.id
}
