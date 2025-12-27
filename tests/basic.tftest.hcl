run "basic" {
  command = plan

  variables {
    instance_type = "t3.micro"
    region        = "ap-northeast-3"
  }

  assert {
    condition     = output.alb_url != null && output.alb_url != ""
    error_message = "The alb_url output should not be null or empty."
  }
}