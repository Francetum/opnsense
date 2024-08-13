resource "vmware_virtual_machine" "opnsense" {
  # ... configuration simplifiée de la VM OPNsense
  name        = "opnsense"
  guest_id    = "ubuntu-22.04"
  num_cpus    = 4
  memory      = 4096
  datastore_id = var.datastore
  resource_pool_id = var.resource_pool
  # ... ajouter les interfaces réseau, etc.

  network_interface {
    network_id = var.network_map["DMZ"]
    adapter_type = "e1000"
    backing {
      type = "custom"
      custom_adapter_type = "vmxnet3"
    }
  }

  # Ajouter d'autres interfaces réseau si nécessaire, en spécifiant le réseau
  # et le type d'adaptateur approprié
  network_interface {
    network_id = var.network_map["VLAN1"]
    adapter_type = "e1000"
    backing {
      type = "custom"
      custom_adapter_type = "vmxnet3"
    }
  }
}