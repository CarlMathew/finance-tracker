output "railway_project_id" {
  description = "Railway Project ID"
  value       = railway_project.finance_tracker.id
}


output "railway_backend_service_id" {
  description = "Railway backend service ID"
  value       = railway_service.backend.id
}

output "railway_frontend_service_id" {
  description = "Railway frontend service ID"
  value       = railway_service.frontend.id
}
