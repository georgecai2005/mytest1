resource "google_storage_bucket" "bkt_qw_george-01" {
  force_destroy               = false
  location                    = var.region
  name                        = "${var.project_id}-cloud-build-storage"
  project                     = var.project_id
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
