provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


# Admins get full control on admin test RG
resource "azurerm_role_assignment" "admin_owner" {
  scope                = var.admin_rg_id
  role_definition_name = "Owner"
  principal_id         = var.admin_group_object_id
}

# Developers can modify resources in dev test RG
resource "azurerm_role_assignment" "dev_contributor" {
  scope                = var.dev_rg_id
  role_definition_name = "Contributor"
  principal_id         = var.dev_group_object_id
}

# Auditors can only read from readonly test RG
resource "azurerm_role_assignment" "auditor_reader" {
  scope                = var.auditor_rg_id
  role_definition_name = "Reader"
  principal_id         = var.auditor_group_object_id
}
