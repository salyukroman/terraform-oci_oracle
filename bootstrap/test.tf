data "oci_objectstorage_namespace" "test" {}

output "object_storage_namespace" {
  value = data.oci_objectstorage_namespace.test.namespace
}
