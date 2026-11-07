\# AWS Cloud Data Migration Lab – Migration Validation Report



\## Project Overview

This project demonstrates a simulated data migration from a local Windows environment to Amazon S3 using AWS CLI, PowerShell, and Terraform.



\## Migration Process

\- Created synthetic CSV sample data locally.

\- Uploaded `partners.csv` to Amazon S3.

\- Downloaded the uploaded file from S3 to validate the migration.

\- Compared SHA-256 hashes of the original and downloaded files.



\## Data Integrity Verification

SHA-256 hash comparison confirmed that the downloaded file matched the original local file.



\*\*Result:\*\* Successful data integrity verification.



\## S3 Security Configuration

\- Server-side encryption: AES256 (SSE-S3).

\- S3 Block Public Access: All four settings enabled.

\- Bucket tagging configured through Terraform.

\- Existing bucket managed through Terraform.



\## Infrastructure as Code

Terraform was used to manage the existing S3 bucket, encryption configuration, and public-access block settings.



\*\*Terraform validation:\*\* `terraform plan` completed with no changes after deployment.



\*\*Latest Terraform apply:\*\* 0 resources added, 1 resource changed, 0 resources destroyed.



\## Conclusion

The migration workflow successfully transferred synthetic data to Amazon S3 and verified its integrity. Terraform provides repeatable infrastructure management, while encryption and public-access restrictions help protect the migrated data.

