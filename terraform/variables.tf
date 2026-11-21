variable "render_api_key" {
  description = "API key used by Terraform to manage Render Resources"
  type        = string
  sensitive   = true
}

variable "render_owner_id" {
  description = "Render user or workspace owner ID"
  type        = string
  sensitive   = true

}

variable "environment" {
  description = "Application environment"
  type        = string
  default     = "production"

  validation {
    condition = contains(
      ["development", "staging", "production"],
      var.environment
    )

    error_message = "Environment must be development, staging, or production."
  }
}


variable "region" {
  description = "Render region for the application and database"
  type        = string
  default     = "singapore"
}

variable "github_repository_url" {
  description = "HTTPS URL of the finance tracker github repository"
  type        = string
}

variable "backend_branch" {
  description = "Git branch used to deploy backend"
  type        = string
  default     = "main"
}

variable "backend_root_directory" {
  description = "Backend Folder inside the monorepo"
  type        = string
  default     = "backend"

}
