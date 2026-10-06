# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.routetable.oc1.eu-frankfurt-1.aaaaaaaavmc2sxyebycca3ze6ve5tlyfec53ri3rse6jdntu2y2kg6w326fq"
resource "oci_core_route_table" "n8n_route_table" {
  lifecycle {
    prevent_destroy = true
  }
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:55.468Z"
  }
  display_name = "default route table for n8n-network"
  freeform_tags = {
    VCN = "2026-09-15T16:49:56.950Z"
  }
  vcn_id = oci_core_vcn.n8n_network.id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.n8n_internet_gateway.id
    route_type        = "STATIC"
  }
}
