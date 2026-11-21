output "backend_service_id" {
  description = "Render service ID for the Finance Tracker API"
  value       = render_web_service.finance_backend.id

}


output "backend_service_url" {
  description = "Public URL of the Finance Tracker API"
  value       = render_web_service.finance_backend.url
}


output "backend_service_slug" {
  description = "valRender service slug for the Finance Tracker API"
  value       = render_web_service.finance_backend.slug

}
