variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "backend_bucket" {
  description = "S3 bucket for Terraform remote state"
  type        = string
}

variable "backend_lock_table" {
  description = "DynamoDB table for state locking"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "DevSecOpsProject"
}

variable "codebuild_image" {
  description = "CodeBuild Docker image to use"
  default     = "aws/codebuild/standard:6.0"
}

variable "github_owner" {
  description = "GitHub owner or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch to track"
  type        = string
  default     = "main"
}

variable "codestar_connection_arn" {
  description = "CodeStar connection ARN to GitHub"
  type        = string
}
