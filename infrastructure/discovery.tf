output "current_server" {
  value = [
    {
      name  = oci_core_instance.current_server.display_name
      id    = oci_core_instance.current_server.id
      shape = oci_core_instance.current_server.shape
      state = oci_core_instance.current_server.state
    }
  ]
}

output "n8n_vcn" {
  value = [
    {
      name       = oci_core_vcn.n8n_network.display_name
      id         = oci_core_vcn.n8n_network.id
      cidr_block = oci_core_vcn.n8n_network.cidr_block
      state      = oci_core_vcn.n8n_network.state
    }
  ]
}
