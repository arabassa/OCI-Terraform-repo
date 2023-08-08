#provider specifics
region = "eu-madrid-1"
tenancy_ocid = "ocid1.tenancy.oc1.fakeOCIDTenant2jbuya"
user_ocid = "ocid1.user.oc1..fakeOCIDUser62jym52rzlavlv4mmfkq"
fingerprint = "aa:bb:cc:dd:ee:58:33:11:22:33:44:ea:ec:aa:f7:bf"
private_key_path = "./keys/oci_private.pem"

#bucket specifics
bucket_name = "VMware_repo"
bucket_access_type = "NoPublicAccess"
bucket_storage_tier = "Standard"
bucket_namespace = "324098fFakeName"

#object specifics
object1 = "VM1.ova"
object1_source = "./ova/VM1.ova"
object2 = "VM2.ova"
object2_source = "./ova/VM2.ova"

#preauth specifics
preauth_object = "VM1.ova"
preauth_access_type = "ObjectRead"
preauth_name = "VM1.ova"