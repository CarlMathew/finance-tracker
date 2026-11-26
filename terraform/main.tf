resource "railway_project" "finance_tracker" {
  name = var.project_name
}

resource "railway_service" "backend" {
  name       = var.backend_service_name
  project_id = railway_project.finance_tracker.id

  source_repo        = var.github_repository
  source_repo_branch = var.github_branch


  root_directory  = "/finance-backend"
  dockerfile_path = "/finance-backend/Dockerfile"

  healthcheck_path    = "/api/v1/health"
  healthcheck_timeout = 300

  restart_policy_type        = "ON_FAILURE"
  restart_policy_max_retries = 10

  watch_patterns = [
    "/backend/**"
  ]

}


resource "railway_service" "frontend" {
  name       = var.frontend_service_name
  project_id = railway_project.finance_tracker.id

  source_repo        = var.github_repository
  source_repo_branch = var.github_repository

  root_directory  = "/${var.frontend_root_directory}"
  dockerfile_path = "/${var.frontend_root_directory}/Dockerfile"


  restart_policy_type        = "ON_FAILURE"
  restart_policy_max_retries = 10

  watch_patterns = [
    "/${var.frontend_root_directory}/**"
  ]
}
