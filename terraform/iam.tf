resource "google_service_account" "github_action3" {
  account_id   = "github3"
  display_name = "github3"
}

resource "google_project_iam_member" "github_execution_role" {
  project = var.project_id
  role    = "roles/viewer" # Update with the desired role for GitHub execution

  member = "serviceAccount:${google_service_account.github_action3.email}"
}
