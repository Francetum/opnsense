terraform {
  required_providers {
    vmware = {
      source  = "hashicorp/vmware"
      version = "~> 3.0"
    }
  }
}


module "opnsense" {
  source  = "./modules/opnsense"
  vcenter_server = var.vcenter_server
  username       = var.username
  password       = var.password
  datastore     = var.datastore
  resource_pool = var.resource_pool
}

module "network" {
  source  = "./modules/network"
  vcenter_server = var.vcenter_server
  username       = var.username
  password       = var.password
  datastore     = var.datastore
  resource_pool = var.resource_pool
}
