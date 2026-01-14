variables.tf is used to parameterize Terraform code, enabling reusability, environment isolation, and avoiding hard-coded values. While not mandatory, it is essential for production-grade and CI/CD-driven infrastructure

# variables.tf is not mandatory. Terraform works perfectly without it. Its a configuration inputs, not logic
# 
# We create variables.tf when we want:
#   - Reusability
#   - Environment separation (dev / qa / prod)
#   - Avoid hard-coding values
#   - Cleaner, scalable architecture
# 
# 

# Use variables when:
#   - Multiple environments
#   - Multiple regions
#   - Multiple users/roles
#   - CI/CD pipelines
#   - Team usage


STEP 1: Define Variables (variables.tf)

📄 variables.tf

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "developer_user_name" {
  description = "IAM developer user name"
  type        = string
  default     = "developer-user"
}

variable "developer_group_name" {
  description = "IAM developers group name"
  type        = string
  default     = "developers-group"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

STEP 2: Use Variables in Provider (provider.tf)
provider "aws" {
  region = var.aws_region
}

STEP 3: Use Variables in IAM User (users.tf)
resource "aws_iam_user" "developer" {
  name = "${var.developer_user_name}-${var.environment}"
}

STEP 4: Use Variables in IAM Group (groups.tf)
resource "aws_iam_group" "developers" {
  name = "${var.developer_group_name}-${var.environment}"
}

How This Is Used in Real Projects
Example: Different environments
terraform apply -var="environment=dev"
terraform apply -var="environment=qa"
terraform apply -var="environment=prod"


Resources created:

developer-user-dev
developer-user-qa
developer-user-prod


