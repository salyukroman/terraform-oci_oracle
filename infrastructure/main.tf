data "oci_objectstorage_namespace" "current" {}

output "object_storage_namespace" {
  value = data.oci_objectstorage_namespace.current.namespace
}
