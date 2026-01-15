# AWS – IAM Group
#    Collection of IAM users
#    Used to attach policies once
#    Users inherit permissions

resource "aws_iam_group" "dev_group" {
  name = "developers"
}

####################################################################
# GCP does not have a native IAM group resource in Terraform.
# How GCP handles groups

Uses:

Google Groups (Workspace)

Or external identity providers

Terraform cannot create Google Groups

Terraform can only assign roles to a group

####################################################################


resource "azuread_group" "dev_group" {
  display_name     = "Developers"
  security_enabled = true
}


resource "azuread_group_member" "member" {
  group_object_id  = azuread_group.dev_group.id
  member_object_id = azuread_user.azure_user.id
}


####################################################################

| Cloud | Can Terraform Create Group? | Resource              |
| ----- | --------------------------- | --------------------- |
| AWS   | ✅ Yes                       | `aws_iam_group`       |
| GCP   | ❌ No                        | External Google Group |
| Azure | ✅ Yes                       | `azuread_group`       |



