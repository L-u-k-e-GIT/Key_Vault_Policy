resource "azurerm_key_vault_access_policy" "vm_identity_policy" {
  key_vault_id = var.MD_KEY_VAULT
  tenant_id    = var.MD_ARM_TENANT_ID
  object_id    = var.MD_VM_IDENTITY

   secret_permissions = [
    "Get",  "Delete", "Set", "Purge", "Recover" , "List", "Backup"
  ]
}
