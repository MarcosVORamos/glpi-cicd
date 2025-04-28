resource "aws_s3_bucket" "terraform-state" {
  bucket        = var.bucket_name_terraform_state
  force_destroy = true

  lifecycle {
    prevent_destroy = true
  }

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "terraform-state" {
  bucket = var.bucket_name_terraform_state

  versioning_configuration {
    status = "Enabled"
  }
}