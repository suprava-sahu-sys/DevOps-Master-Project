# DevOps-Master-Project

AWS Cloud Assignment: CodePipeline using Terraform & DevSecOps with GitHub Actions and
Kubernetes Sealed Secrets
#### Task 1: CodePipeline using Terraform
Use Terraform to provision an AWS CodePipeline.
The pipeline must include:
• Source stage connected to GitHub or CodeCommit
• Build stage using AWS CodeBuild
• Deploy stage using AWS CodeDeploy or EC2
Define all required infrastructure using Terraform:
• CodePipeline, CodeBuild, CodeDeploy
• IAM roles and policies
• S3 buckets for artifact storage
 Use Terratest to write infrastructure tests and validate the Terraform modules.
Apply Terraform to create the pipeline and confirm successful setup.

#### Task 2: DevSecOps Integration using GitHub Actions and Sealed Secrets
Use GitHub Actions to automate the CI/CD workflow.
Integrate security scanning into the workflow using:
• `tfsec` for Terraform code
• `Trivy` for Docker image scanning
• Use Sealed Secrets to manage Kubernetes secrets securely before deploying workloads.
• Store secrets in encrypted SealedSecrets format and apply them to the Kubernetes cluster
as part of the deployment pipeline.
Ensure GitHub Actions workflow:
• Executes on each code push
• Runs security scans
• Applies SealedSecrets
• Triggers deployment to Kubernetes or updates infrastructure via Terraform
