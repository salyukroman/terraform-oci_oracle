# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.vcn.oc1.eu-frankfurt-1.amaaaaaa7agpmxyab5lslw2j2v3mdvvlnl77lnaw4523ofzuyzf3p67t6goq"
resource "oci_core_vcn" "n8n_network" {
  lifecycle {
    prevent_destroy = true
  }
  cidr_block     = "10.0.0.0/16"
  cidr_blocks    = ["10.0.0.0/16"]
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:55.468Z"
  }
  display_name = "n8n-network"
  dns_label    = "n8nnetwork"
  freeform_tags = {
    VCN = "2026-09-15T16:49:56.950Z"
  }
  ipv6private_cidr_blocks = []
  is_ipv6enabled          = false
  security_attributes     = {}
}
