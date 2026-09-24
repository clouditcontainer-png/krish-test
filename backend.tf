terraform {
  backend "azurerm" {
    resource_group_name  = "rg-infosys-terraform-state"
    storage_account_name = "stoinfyterrafromstate001"
    container_name       = "tfstate"
    key                  = "infosys/ccd/prod/terraform.tfstate"

    use_azuread_auth = true
  }
}
