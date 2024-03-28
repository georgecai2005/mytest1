resource "google_service_account" "github_action" {
  account_id   = "github2"
  display_name = "github2"
}

resource "google_project_iam_member" "github_execution_role" {
  project = var.project_id
  role    = "roles/editor" # Update with the desired role for GitHub execution

  member = "serviceAccount:${google_service_account.github_action.email}"
}
