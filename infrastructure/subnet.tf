# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaaia5bwbgacs6w7yr5xgfypuavsmi6f2f23sjaat6klx7oblgytefq"
resource "oci_core_subnet" "n8n_subnet" {
  lifecycle {
    prevent_destroy = true
  }
  cidr_block     = "10.0.0.0/24"
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:56.312Z"
  }
  dhcp_options_id = oci_core_dhcp_options.n8n_dhcp_options.id
  display_name    = "public subnet-n8n-network"
  dns_label       = "sub09151704550"
  freeform_tags = {
    VCN = "2026-09-15T17:04:53.402Z"
  }
  ipv4cidr_blocks            = ["10.0.0.0/24"]
  ipv6cidr_blocks            = []
  prohibit_internet_ingress  = false
  prohibit_public_ip_on_vnic = false
  route_table_id             = oci_core_route_table.n8n_route_table.id
  security_list_ids          = [oci_core_security_list.n8n_security_list.id]
  vcn_id                     = oci_core_vcn.n8n_network.id
}
