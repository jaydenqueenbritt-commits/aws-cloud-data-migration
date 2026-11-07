# AWS Cloud Data Migration Lab

## Overview

This project involved migrating a sample dataset from a local Windows environment to Amazon Web Services (AWS) using Amazon S3. Terraform was used to provision the cloud infrastructure, and AWS CLI was used to transfer the data and verify the configuration.

The project focused on moving data into cloud storage while implementing security controls to protect the destination environment.

## Project Goals

- Provision an Amazon S3 bucket using Terraform.
- Transfer a local CSV file into AWS using AWS CLI.
- Configure server-side encryption for stored data.
- Enable S3 Block Public Access settings.
- Verify the uploaded file and review the bucket configuration.
- Document the migration process and validation results.

## Technologies Used

- Amazon Web Services (AWS)
- Amazon S3
- Terraform
- AWS CLI
- IAM Identity Center
- Windows PowerShell
- Git and GitHub

## Cloud Infrastructure

An Amazon S3 bucket was created and configured using Terraform.

- Bucket name: aws-cloud-migration-647625
- AWS Region: us-east-1 (N. Virginia)
- Storage service: Amazon S3
- Migrated file: partners.csv

Terraform was used to define and manage the S3 bucket and its security configurations. The infrastructure configuration was separated into individual files to make the project easier to maintain.

## Security Configuration

### Server-Side Encryption

Configured default server-side encryption using Amazon S3-managed encryption keys (SSE-S3).

- Encryption algorithm: AES-256
- Key management: Amazon S3-managed keys
- Encryption configuration verified using AWS CLI.

### Block Public Access

Enabled all four Amazon S3 Block Public Access settings to help prevent unauthorized public access to the bucket.

- Block public ACLs
- Ignore public ACLs
- Block public bucket policies
- Restrict public bucket access

The configuration was verified using AWS CLI commands.

## Data Migration

Created a sample CSV dataset named partners.csv in the local sample-data directory.

Used AWS CLI to transfer the file from the Windows environment into the Amazon S3 bucket.

After the upload, verified that the object was present in the destination bucket using AWS CLI.

The migration validation report is available in the migration-reports directory.

## Infrastructure Validation

Terraform was used to validate the deployed infrastructure against the configuration files.

The final Terraform plan reported that no changes were necessary and that the deployed infrastructure matched the configuration.

Additional AWS CLI checks were performed to verify:

- S3 bucket location
- Uploaded file presence
- Default encryption configuration
- Block Public Access settings

## Repository Contents

- architecture: Architecture diagram for the migration workflow.
- documentation: Supporting project documentation.
- evidence: Screenshots of AWS configurations and migration results.
- migration-reports: Migration validation report.
- sample-data: Sample CSV file used for the migration.
- terraform: Terraform configuration files used to provision the AWS infrastructure.

## Skills Developed

- AWS cloud storage configuration
- Terraform and Infrastructure as Code
- AWS CLI and PowerShell
- Cloud data migration
- S3 encryption and access controls
- Infrastructure validation
- Git and GitHub version control

## Project Results

Successfully provisioned an Amazon S3 bucket using Terraform, transferred a sample CSV dataset from a local Windows environment into AWS, and verified the destination bucket's encryption and public access configurations.

This project provided practical experience with AWS storage services, infrastructure automation, cloud security configurations, and data migration workflows.
