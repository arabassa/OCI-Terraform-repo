variable preauth_access_type {}
variable preauth_name {}
variable preauth_object {}

resource "oci_objectstorage_preauthrequest" "preauth_object" {
    access_type = var.preauth_access_type
    bucket = var.bucket_name
    namespace = var.bucket_namespace
    object = var.preauth_name
    name = var.preauth_name
    time_expires = timeadd(timestamp(),"1h")
    depends_on = [ oci_objectstorage_object.template1 ]
}

output "pre-auth-url" {
   value = oci_objectstorage_preauthrequest.preauth_object.full_path
 }