variable "client_id" {}
variable "client_secret" {}

variable "agent_count" {
    default = 1
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "prod2-nebbia-aks"
}

variable cluster_name {
    default = "prod2-nebbia-aks"
}

variable resource_group_name {
    default = "prod2-nebbia-rg"
}

variable location {
    default = "East US"
}

variable log_analytics_workspace_name {
    default = "prod2NebbiaAksWksp"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}