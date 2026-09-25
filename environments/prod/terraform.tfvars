# Resource Group
resource_group_name     = "rg-infosys-ccd-prod-014"
resource_group_location = "japaneast"

# Resource tags
common_tags = {
  created_by  = "terraform"
  Environment = "CCD-test"
}

# Network Security Group
nsg_apim_name    = "nsg-apim-infosys-prod-014"
default_nsg_name = "nsg-default-infosys-prod-014"

# Virtual Network
virtual_network_name = "vnet-infosys-ccd-prod-014"
vnet_address_space   = "10.30.0.0/24"

# Subnets
firewall_subnet_address_prefix         = "10.30.0.0/26"
apim_subnet_name                       = "snet-apim"
apim_subnet_address_prefix             = "10.30.0.64/27"
private_endpoint_subnet_name           = "snet-pe"
private_endpoint_subnet_address_prefix = "10.30.0.128/27"

# Power Platform
power_platform_region = "Japan"

# PP subnet in primary VNet
pp_subnet_name           = "snet-pp-agent"
pp_subnet_address_prefix = "10.30.0.96/27"

# PP secondary VNet (paired region)
pp_secondary_vnet_name             = "vnet-pp-infosys-prod"
pp_secondary_vnet_address_space    = "10.31.0.0/24"
pp_secondary_subnet_address_prefix = "10.31.0.0/26"

# VNet Peering between primary and secondary PP VNets
enable_vnet_peering = true

# Key Vault
key_vault_name = "kv-infosys-ccd-prod-014"

# Azure Firewall
firewall_policy_name    = "afwp-infosys-ccd-prod-014"
firewall_name           = "afw-infosys-ccd-prod-014"
firewall_public_ip_name = "pip-afw-infosys-ccd-prod-014"

# API Management
apim_name     = "apim-infosys-ccd-prod-014"
apim_sku_name = "Developer_1"
apim_jwt_named_values = {
  jwt-header-name          = "Authorization"
  jwt-failed-http-code     = "401"
  jwt-failed-error-message = "Unauthorized. Access token is missing or invalid."
  jwt-required-scheme      = "Bearer"
  jwt-tenant-id            = "7eddb9d1-7ad5-4a37-be3e-f285f801abf4"
  jwt-openid-config-url    = "https://login.microsoftonline.com/7eddb9d1-7ad5-4a37-be3e-f285f801abf4/v2.0/.well-known/openid-configuration"
  jwt-audience             = "a724da2e-bfdf-47ea-8c2b-394649d23934"
  jwt-issuer               = "https://sts.windows.net/7eddb9d1-7ad5-4a37-be3e-f285f801abf4/"
  jwt-required-scope       = "User.Read"
  jwt-missing-value        = "Missing"
}

# Power Platform Enterprise Policy
pp_enterprise_policy_name = "ep-infosys-ccd-prod-014"


# route table
route_table_name              = "rt-infosys-ccd-prod-014"
pp_secondary_route_table_name = "rt-pp-secondary-infosys-prod-014"

# PP secondary NSG
pp_secondary_nsg_name = "nsg-pp-secondary-infosys-prod-014"

# Network Security Perimeter for Log Analytics queries
network_security_perimeter_name         = "nsp-infosys-ccd-prod-014"
network_security_perimeter_profile_name = "profile-log-query"
log_analytics_query_allowed_ip_ranges = [
  "136.226.0.0/16",
  "167.103.0.0/16",
  "170.85.0.0/16",
  "147.161.128.0/17",
  "165.225.0.0/17",
  "137.83.128.0/18",
  "165.225.192.0/18",
  "104.129.192.0/20",
  "185.46.212.0/22",
  "199.168.148.0/22",
  "220.243.154.0/23",
  "140.210.152.0/23",
  "8.25.203.0/24",
  "70.39.159.0/24",
  "89.167.131.0/24",
  "213.152.228.0/24",
  "8.34.34.0/24",
  "8.35.35.0/24",
  "72.37.140.0/24",
  "89.167.129.0/24",
  "128.177.125.0/24",
  "128.177.129.0/24",
  "128.177.135.0/24",
  "128.177.136.0/24",
  "216.66.5.0/24",
  "58.220.95.0/24",
  "124.248.141.0/24",
  "113.31.184.0/24",
  "123.58.103.0/25",
  "64.74.126.64/26",
  "72.52.96.0/26",
  "216.52.207.64/26",
  "216.218.133.192/26",
  "94.188.139.64/26",
  "94.188.248.64/26",
  "209.51.184.0/26",
  "89.191.7.16/28",
  "188.116.35.32/28",
  "112.196.99.180/32",
  "13.235.119.130/32",
  "15.206.200.26/32",
  "15.206.201.38/32",
  "15.206.38.31/32",
  "52.66.116.178/32",
  "52.66.115.172/32",
  "52.66.51.4/32",
  "52.66.123.138/32",
  "35.154.244.217/32",
  "52.66.161.176/32",
  "13.126.9.75/32",
  "13.234.57.151/32",
  "13.127.148.174/32",
  "13.127.212.107/32",
  "13.127.26.17/32",
  "13.127.99.160/32",
  "103.170.81.84/32",
]