variable "pm_url" {
    type = string
    description = "URL for the Proxmox instance API"
}

variable "pm_api_token_id" {
    type = string
    description = "ID for cluster access token"
}

variable "pm_api_token_secret" {
    type = string
    description = "Secret associated with the previous token"
}

variable "pm_node_name" {
    type = string
    description = "Node to deploy the VMs on"
}

variable "pm_tls_insecure" {
    type = bool
    description = "True if the Proxmox certificate is self-signed"
}

variable "template_name" {
    type = string
    description = "Name of the Packer template"
}

variable "k3s_server_memory" {
    type = number
    description = "RAM memory amount for the server instances"
}

variable "k3s_agent_memory" {
    type = number
    description = "RAM memory amount for the agent instances"
}

variable "k3s_server_cpu" {
    type = number
    description = "CPU cores amount for the server instances"
}

variable "k3s_agent_cpu" {
    type = number
    description = "CPU cores amount for the agent instances"
}

variable "ssh_public_key" {
    type = string
    description = "Path of the SSH public key to add on Cloud-Init"
}

variable "gateway" {
    type = string
    description = "Address of the gateway"
}

variable "server_ips" {
    type = list(string)
    description = "List of IP addresses of the servers VMs"
}

variable "agent_ips" {
    type = list(string)
    description = "List of IP addresses of the agents VMs"
}