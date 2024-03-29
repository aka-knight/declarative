provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks1"
  location            = "East US"
  resource_group_name = "my-new-RG"
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
