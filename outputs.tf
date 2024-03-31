output "vm_public_ip" {
  value = module.virtual_machine.public_ip
}

output "keyvault_id" {
  value = module.key_vault.key_vault_id
}

output "storage_account_id" {
  value = module.storage_account.storage_account_id
}
