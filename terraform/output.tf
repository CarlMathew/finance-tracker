output "railway_project_id" {
  description = "Railway Project ID"
  value       = railway_project.finance_tracker.id
}

output "railway_environment_id" {
  description = "Railway Production environment ID"
  value       = railway_environment.production.id

}


output "railway_backend_service_id" {
  description = "Railway backend service ID"
  value       = railway_service.backend.id
}
