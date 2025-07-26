provider "aws" {
  region = var.aws_region
}

# ----------------------------
# Secure S3 Bucket Definition
# ----------------------------
resource "aws_s3_bucket" "example" {
  bucket        = var.bucket_name
  force_destroy = true

  tags = {
    Environment = "Dev"
    Owner       = "Ayush"
  }
}

# ✅ Enable versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}

# ✅ Enable server-side encryption (AWS-managed keys)
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.example.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# ✅ Public Access Block
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.example.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

# ✅ Enable logging (logs to a separate bucket - must exist or be created)
resource "aws_s3_bucket_logging" "logging" {
  bucket = aws_s3_bucket.example.id

  target_bucket = var.log_bucket_name
  target_prefix = "log/"
}
