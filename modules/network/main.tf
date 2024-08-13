resource "vmware_network" "dmz" {
  name = "DMZ"
}

resource "vmware_network" "vlan1" {
  name = "VLAN1"
}

resource "vmware_network" "vlan2" {
  name = "VLAN2"
}
