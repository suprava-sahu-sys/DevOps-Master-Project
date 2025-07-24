output "artifact_bucket" {
  description = "S3 bucket used for storing artifacts"
  value       = aws_s3_bucket.artifact_bucket.id
}

output "codepipeline_id" {
  description = "ID of the CodePipeline"
  value       = aws_codepipeline.devsecops_pipeline.id
}

output "codebuild_project_name" {
  description = "Name of the CodeBuild project"
  value       = aws_codebuild_project.devsecops_build.name
}

output "codedeploy_app_name" {
  description = "Name of the CodeDeploy application"
  value       = aws_codedeploy_app.devsecops_app.name
}
