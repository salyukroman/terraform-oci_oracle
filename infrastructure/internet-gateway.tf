# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.internetgateway.oc1.eu-frankfurt-1.aaaaaaaahg4oxvud3h4cpnlelh6wwqyrreo6hx3vld4acfivyr7psniwbpza"
resource "oci_core_internet_gateway" "n8n_internet_gateway" {
  lifecycle {
    prevent_destroy = true
  }
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:56.345Z"
  }
  display_name = "Internet gateway-n8n-network"
  enabled      = true
  freeform_tags = {
    VCN = "2026-09-15T17:04:53.402Z"
  }
  vcn_id = oci_core_vcn.n8n_network.id
}
