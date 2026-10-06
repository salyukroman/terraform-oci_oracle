data "oci_core_vnic_attachments" "current_server_vnics" {
  compartment_id = var.compartment_ocid
  instance_id    = oci_core_instance.current_server.id
}

output "server_details" {
  value = {
    availability_domain = oci_core_instance.current_server.availability_domain
    fault_domain        = oci_core_instance.current_server.fault_domain
    shape               = oci_core_instance.current_server.shape
    ocpus               = try(oci_core_instance.current_server.shape_config[0].ocpus, null)
    memory_in_gbs       = try(oci_core_instance.current_server.shape_config[0].memory_in_gbs, null)
    image_id            = try(oci_core_instance.current_server.source_details[0].source_id, null)
    preserve_boot       = oci_core_instance.current_server.preserve_boot_volume
  }
}

output "vnic_attachments" {
  value = [
    for v in data.oci_core_vnic_attachments.current_server_vnics.vnic_attachments : {
      id        = v.id
      vnic_id   = v.vnic_id
      subnet_id = v.subnet_id
      state     = v.state
    }
  ]
}
