variable "resource_group_name" {
  description = "Nom du Resource Group Azure"
  type        = string
  default     = "rg-BJM-wordpress-k8s"
}

variable "location" {
  description = "Région Azure"
  type        = string
  default     = "West Europe"
}

variable "prefix" {
  description = "Préfixe pour nommer les ressources"
  type        = string
  default     = "BJM-k8s"
}

variable "vm_names" {
  description = "Liste des VMs"
  type        = list(string)
  default     = ["master", "worker1", "worker2"]
}

variable "vm_size" {
  description = "Taille des VMs"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Utilisateur SSH"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Chemin clé publique SSH"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
