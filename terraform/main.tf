resource "aws_s3_bucket" "migration" {
  bucket = "aws-cloud-migration-647625"

  tags = {
    Name        = "AWS Cloud Migration Lab"
    Project     = "AWS Cloud Data Migration"
    Environment = "Learning"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "migration" {
  bucket = aws_s3_bucket.migration.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "migration" {
  bucket = aws_s3_bucket.migration.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}