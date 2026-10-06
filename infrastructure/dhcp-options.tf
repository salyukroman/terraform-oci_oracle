# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.dhcpoptions.oc1.eu-frankfurt-1.aaaaaaaavwoqhyddodw4pmenliht5y6cbxip7rtnsifmyj45rhftgbgyrqcq"
resource "oci_core_dhcp_options" "n8n_dhcp_options" {
  lifecycle {
    prevent_destroy = true
  }
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:55.468Z"
  }
  display_name     = "Default DHCP Options for n8n-network"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
    VCN = "2026-09-15T16:49:56.950Z"
  }
  vcn_id = oci_core_vcn.n8n_network.id
  options {
    custom_dns_servers  = []
    search_domain_names = ["n8nnetwork.oraclevcn.com"]
    type                = "SearchDomain"
  }
  options {
    custom_dns_servers  = []
    search_domain_names = []
    server_type         = "VcnLocalPlusInternet"
    type                = "DomainNameServer"
  }
}
