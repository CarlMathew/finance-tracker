variable "railway_token" {
  description = "Railway API token used by terraform"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Name of the railway project"
  type        = string
  default     = "finance-tracker"
}

variable "environment_name" {
  description = "Railway environment"
  type        = string
  default     = "production"
}

variable "backend_service_name" {
  description = "Name of the FastAPI service"
  type        = string
  default     = "finance-tracker-api"
}

variable "github_repository" {
  description = "Github repository in owner/repository format"
  type        = string
}

variable "github_branch" {
  description = "Github branch Railway should deploy"
  type        = string
  default     = "main"
}

variable "backend_root_directory" {
  description = "Backend directory inside the monorepo"
  type        = string
  default     = "backend"

}
