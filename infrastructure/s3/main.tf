module "s3" {
    source = "../../modules/s3"
    # access_key = var.access_key
    # secret_key = var.secret_key
    bucket  = var.bucket
    acl = var.acl
}