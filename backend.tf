terraform {

  // Environment-specific backend values are supplied during initialization.
  backend "azurerm" {
    use_azuread_auth = true
  }
}
