variable bucket_name {} 
variable bucket_namespace {}
variable bucket_access_type {}
variable bucket_storage_tier {}

resource "oci_objectstorage_bucket" "VMware-bucket" {
    #Required
    compartment_id = var.tenancy_ocid
    name = var.bucket_name
    namespace = var.bucket_namespace

    #Optional
    access_type = var.bucket_access_type
    freeform_tags = {"Department"= "DevOps"}
    storage_tier = var.bucket_storage_tier
}