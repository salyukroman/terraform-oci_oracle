# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ocid1.securitylist.oc1.eu-frankfurt-1.aaaaaaaaa2rpze7lvpyrgnufyxmtdntzhdyych2tiirwq77hmmy56ocxvdmq"
resource "oci_core_security_list" "n8n_security_list" {
  lifecycle {
    prevent_destroy = true
  }
  compartment_id = var.compartment_ocid
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/salyuk.roman@gmail.com"
    "Oracle-Tags.CreatedOn" = "2026-09-15T17:04:55.468Z"
  }
  display_name = "Default Security List for n8n-network"
  freeform_tags = {
    VCN = "2026-09-15T16:49:56.950Z"
  }
  vcn_id = oci_core_vcn.n8n_network.id
  egress_security_rules {
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
    stateless        = false
  }
  ingress_security_rules {
    description = "Allow Hermes Agent"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 8787
      min = 8787
    }
  }
  ingress_security_rules {
    description = "Allow n8n"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 5678
      min = 5678
    }
  }
  ingress_security_rules {
    protocol    = "1"
    source      = "10.0.0.0/16"
    source_type = "CIDR_BLOCK"
    stateless   = false
    icmp_options {
      code = -1
      type = 3
    }
  }
  ingress_security_rules {
    protocol    = "1"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    icmp_options {
      code = 4
      type = 3
    }
  }
  ingress_security_rules {
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false
    tcp_options {
      max = 22
      min = 22
    }
  }
}
