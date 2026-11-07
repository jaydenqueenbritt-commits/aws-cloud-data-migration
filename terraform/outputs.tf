output "bucket_name" {
  description = "Name of the S3 migration bucket"
  value       = aws_s3_bucket.migration.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 migration bucket"
  value       = aws_s3_bucket.migration.arn
}
