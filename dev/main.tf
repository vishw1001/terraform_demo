
provider "azurerm" {
  version="3.31.0"
  features {  

  }
}

resource "azurerm_resource_group" "demo" {
  name="mytf-rg"
  location="centralindia"
  tags={
    "terraform"="terraform"
  }
}

output "id" {
  value = data.azurerm_resource_group.example.id
}
