# AWS Cloud Data Migration Lab

<p align="center">
  <strong>Cloud Storage | Infrastructure as Code | Data Migration | AWS Security</strong>
</p>

---

## Project Overview

This project demonstrates a cloud data migration workflow using Amazon Web Services (AWS), Terraform, and the AWS Command Line Interface (CLI). The objective was to provision secure cloud storage, migrate a sample dataset from a local Windows environment into Amazon S3, and validate the destination infrastructure and security configurations.

Terraform was used to provision and manage the Amazon S3 infrastructure, while AWS CLI was used to authenticate to AWS, transfer the sample dataset, and verify the deployed configuration.

The project emphasizes Infrastructure as Code (IaC), cloud storage management, data migration, and security configuration.

## Project Objectives

<ul>
  <li>Provision an Amazon S3 bucket using Terraform.</li>
  <li>Configure secure cloud storage in the US East (N. Virginia) region.</li>
  <li>Migrate a local CSV dataset into Amazon S3 using AWS CLI.</li>
  <li>Implement server-side encryption using Amazon S3-managed keys.</li>
  <li>Configure all four Amazon S3 Block Public Access settings.</li>
  <li>Validate deployed infrastructure using Terraform and AWS CLI.</li>
  <li>Document the migration workflow, security configurations, and validation results.</li>
</ul>

## Tools and Technologies

| Technology | Purpose |
|---|---|
| Amazon Web Services (AWS) | Cloud infrastructure and storage platform |
| Amazon S3 | Object storage and migration destination |
| Terraform | Infrastructure as Code |
| AWS CLI | Authentication, file transfers, and verification |
| IAM Identity Center | Centralized AWS authentication |
| Windows PowerShell | Local command-line environment |
| Git and GitHub | Version control and documentation |

## Architecture

The migration workflow uses a local Windows environment as the source and Amazon S3 as the cloud destination.

Terraform manages the provisioning and configuration of the S3 infrastructure, while AWS CLI performs the actual data transfer.

**Architecture Components:**

<ul>
  <li>Local Windows environment containing the sample dataset.</li>
  <li>AWS CLI used to upload the CSV file.</li>
  <li>Terraform configuration used to provision the S3 infrastructure.</li>
  <li>Amazon S3 bucket used to store the migrated dataset.</li>
  <li>S3 security configurations protecting stored data and restricting public access.</li>
</ul>

<!-- Insert architecture diagram here when completed. -->

## Implementation

### 1. AWS Environment and Authentication Setup

Prepared the local Windows environment for AWS infrastructure deployment and data migration.

<ul>
  <li>Configured AWS CLI.</li>
  <li>Established authentication through IAM Identity Center.</li>
  <li>Configured the AWS CLI profile named <code>security-lab</code>.</li>
  <li>Selected the US East (N. Virginia) region (<code>us-east-1</code>).</li>
  <li>Verified AWS account access using AWS STS.</li>
</ul>

### 2. Infrastructure Provisioning with Terraform

Created Terraform configuration files to define and provision the Amazon S3 infrastructure.

The infrastructure configuration includes:

<ul>
  <li>Amazon S3 bucket.</li>
  <li>S3 Block Public Access configuration.</li>
  <li>S3 server-side encryption configuration.</li>
</ul>

Terraform was used to initialize the working directory, deploy the infrastructure, and compare the deployed resources against the configuration.

The final Terraform plan reported that no changes were necessary, confirming that the deployed infrastructure matched the Terraform configuration.

### 3. Amazon S3 Security Configuration

Implemented security controls to protect the destination storage environment.

**Server-Side Encryption (SSE-S3)**

Configured default server-side encryption for objects stored in the S3 bucket.

<ul>
  <li>Encryption algorithm: AES-256.</li>
  <li>Encryption method: SSE-S3.</li>
  <li>Key management: Amazon S3-managed keys.</li>
</ul>

**S3 Block Public Access**

Enabled all four S3 Block Public Access settings:

<ul>
  <li>Block Public ACLs.</li>
  <li>Ignore Public ACLs.</li>
  <li>Block Public Bucket Policies.</li>
  <li>Restrict Public
