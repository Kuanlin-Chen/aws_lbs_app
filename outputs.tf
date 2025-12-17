output "alb_url" {
  description = "The URL of the Application Load Balancer"
  value       = "https://${aws_lb.load_balancer.dns_name}"
}