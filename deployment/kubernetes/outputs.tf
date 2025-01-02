output "api_service_endpoint" {
  description = "The endpoint of the API service."
  value       = kubernetes_service.api.status[0].load_balancer[0].ingress[0].hostname
}

output "frontend_service_endpoint" {
  description = "The endpoint of the Frontend service."
  value       = kubernetes_service.frontend.status[0].load_balancer[0].ingress[0].hostname
}
