resource "oci_objectstorage_bucket" "terraform_state" {
  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.test.namespace

  name        = "roman-terraform-state"
  access_type = "NoPublicAccess"

  versioning = "Enabled"
}
