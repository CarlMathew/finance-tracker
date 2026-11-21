resource "render_web_service" "finance_backend" {
  name   = "finance-tracker-api"
  plan   = "starter"
  region = var.region

  root_directory    = var.backend_root_directory
  health_check_path = "/health"
  num_instances     = 1

  runtime_source = {
    docker = {
      repo_url        = var.github_repository_url
      branch          = var.backend_branch
      auto_deploy     = true
      context         = "./backend"
      dockerfile_path = "./backend/Dockerfile"

      build_filter = {
        paths = [
          "backend/**"
        ]

        ignored_paths = [
          "frontend/**",
          "terraform/**"
        ]
      }
    }
  }
}
