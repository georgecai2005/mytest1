resource "google_service_account" "github_execution" {
  account_id   = "github-execution-sa"
  display_name = "GitHub Execution Service Account"
}

resource "google_project_iam_member" "github_execution_role" {
  project = "your-project-id"
  role    = "roles/editor"  # Update with the desired role for GitHub execution

  member = "serviceAccount:${google_service_account.github_execution.email}"
}
