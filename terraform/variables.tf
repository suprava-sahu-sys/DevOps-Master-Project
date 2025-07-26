variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "log_bucket_name" {
  description = "Target bucket for logs (must already exist)"
  type        = string
}
