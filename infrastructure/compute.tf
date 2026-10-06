# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.instance.oc1.eu-frankfurt-1.antheljt7agpmxycrdldxrxczepd7f52bsk7goe5xosm7rhpeomdccfrdsiq"
resource "oci_core_instance" "current_server" {
  lifecycle {
    prevent_destroy = true
  }
  async                      = null
  availability_domain        = "pQRw:EU-FRANKFURT-1-AD-2"
  cluster_placement_group_id = null
  compartment_id             = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:25:33.975Z"
  }
  display_name      = "instance-20260915-2020"
  extended_metadata = {}
  fault_domain      = "FAULT-DOMAIN-2"
  freeform_tags     = {}
  metadata = {
    ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAauduJutlS9DE0/tWXXbnSSTF2fecqD1gs7el/uXKDi9OIE4tNvjKYgyFtptQHRG+CR1wTJfUXn75/ksvGKyQXOJDdcMVnF86FF9Fk+1DPfcMvGke+0RuQaR4JRTsvS0MrbNO05mFU5c8q2qSRrvPN6H7Kzd1hXDPub8P+q9DE1ibWiehTdwFYFg4RL0Pi9jhTGqUJkz9KJgncimIBZy4T3VyLsFAxB/MiPgyHmHykmkSZQJb/hLdew4Oalrn7B4nckLYQBqs0FUKvxmwQSlSb06zjPr0kxYDBMOTCempzq4rzo0tZYHImmG4qF7jGb6WgvW/lVWQkCWAHHdzGwnx ssh-key-2026-09-15"
  }
  preserve_boot_volume                    = null
  preserve_data_volumes_created_at_launch = null
  security_attributes                     = {}
  shape                                   = "VM.Standard.A1.Flex"
  state                                   = "RUNNING"
  update_operation_constraint             = null
  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }
  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }
  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = "true"
    defined_tags = {
      "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
      "Oracle-Tags.CreatedOn" = "2026-09-15T17:25:34.211Z"
    }
    display_name           = "instance-20260915-2020"
    freeform_tags          = {}
    hostname_label         = "instance-20260915-2020"
    nsg_ids                = []
    private_ip             = "10.0.0.24"
    security_attributes    = {}
    skip_source_dest_check = false
    subnet_id              = oci_core_subnet.n8n_subnet.id
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = true
  }
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  shape_config {
    baseline_ocpu_utilization = "BASELINE_1_1"
    local_volume_size_in_gbs  = 0
    memory_in_gbs             = 12
    nvmes                     = 0
    ocpus                     = 2
    vcpus                     = 2
  }
  source_details {
    boot_volume_size_in_gbs         = "200"
    boot_volume_vpus_per_gb         = "10"
    is_preserve_boot_volume_enabled = false
    kms_key_id                      = null
    source_id                       = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaatnudwzlqzctpx5rrxohiionypan5fngceqdbybtw6ve7oyhmnnqq"
    source_type                     = "image"
  }
}
