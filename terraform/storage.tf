module "cloud-build-utility-gs" {
  source                = "git::ssh://git@github.com/telus/tf-module-gcp-storage?ref=v0.3.0"
  project_id            = var.project_id
  bucket_name           = "${var.project_id}-cloud-build-storage"
  lifecycle_type        = "Delete"
  versioning_enabled    = "false"
  force_destroy_enabled = "true"
  lifecycle_params = {
    "storage"     = "REGIONAL",
    "delete_days" = "7"
  }
}