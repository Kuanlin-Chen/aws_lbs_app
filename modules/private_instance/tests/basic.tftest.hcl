run "basic" {
  command = plan

  assert {
    condition = aws_instance.web_server.associate_public_ip_address == false
    error_message = "Instances must not have public IPs"
  }
}