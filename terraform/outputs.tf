output "master_public_ip" {
  value = azurerm_public_ip.public_ip["master"].ip_address
}

output "worker1_public_ip" {
  value = azurerm_public_ip.public_ip["worker1"].ip_address
}

output "worker2_public_ip" {
  value = azurerm_public_ip.public_ip["worker2"].ip_address
}

output "ssh_commands" {
  value = {
    master  = "ssh azureuser@${azurerm_public_ip.public_ip["master"].ip_address}"
    worker1 = "ssh azureuser@${azurerm_public_ip.public_ip["worker1"].ip_address}"
    worker2 = "ssh azureuser@${azurerm_public_ip.public_ip["worker2"].ip_address}"
  }
}
