terraform {
  required_version = "0.14.11"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.56.0"
    }
  }

  # backend "azurerm" {}
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

# AKS
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name                = "default"
    enable_auto_scaling = false
    vm_size             = var.vm_size
    node_count          = 1
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
}