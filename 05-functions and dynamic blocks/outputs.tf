output "Web-Server-URL" {
  description = "Web-Server-URL"
  value       = join("", ["http://", aws_instance.my-instance.public_ip])
}