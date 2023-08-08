variable object1 {}
variable object1_source {}
variable object2 {}
variable object2_source {}

resource "oci_objectstorage_object" "template1" {
    bucket = var.bucket_name
    source = var.object1_source
    namespace = var.bucket_namespace
    object = var.object1
    depends_on = [ oci_objectstorage_bucket.VMware-bucket ]
}

resource "oci_objectstorage_object" "template2" {
    bucket = var.bucket_name
    source = var.object2_source
    namespace = var.bucket_namespace
    object = var.object2
    depends_on = [ oci_objectstorage_bucket.VMware-bucket ]

}