variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "region" {
  description = "AWS region"
  type        = string

  validation {
    condition     = var.region != ""
    error_message = "The region variable must not be empty."
  }
}