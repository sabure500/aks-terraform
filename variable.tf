variable "subscription_id" {
  type        = string
  description = "Subscription ID for Azure"
}

variable "client_id" {
  type        = string
  description = "App ID in Azure Service Principal where we want to pass the auth"
}

variable "client_secret" {
  type        = string
  description = "Password in Azure Service Principal where we want to pass the auth"
}

variable "tenant_id" {
  type        = string
  description = "Tenant in Azure Service Principal where we want to pass the auth"
}

# variable "backend_resource_group_name" {
#   type = string
# }

# variable "backend_storage_account_name" {
#   type = string
# }

# variable "backend_container_name" {
#   type = string
# }

# variable "backend_file_name" {
#   type = string
# }

# variable "backend_access_key" {
#   type = string
# }

variable "cluster_name" {
  type    = string
  default = "my-aks-cluster"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "japaneast"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}