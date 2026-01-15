resource "aws_iam_user" "aws_user" {
  name = "demo-user"
}


# GCP does NOT have a “user” resource
# Users come from Google Accounts / Workspace
# We do NOT create users via Terraform

# Grant roles to existing identities
resource "google_project_iam_member" "user_binding" {
  project = "my-project-id"
  role    = "roles/viewer"
  member  = "user:someone@gmail.com"
}

# Identity exists outside GCP
# Terraform only manages permissions

##########################################################

# Azure has two providers:
#      - azurerm → Azure resources
#      - azuread → Users, Groups, Service Principals

resource "azuread_user" "azure_user" {
  user_principal_name = "demo.user@mytenant.onmicrosoft.com"
  display_name        = "Demo User"
  password            = "P@ssword123!"
}

# Managed in Azure Active Directory (Entra ID)
# NOT part of azurerm




| Cloud | User Creation via Terraform | Resource           |
| ----- | --------------------------- | ------------------ |
| AWS   | ✅ Yes                      | `aws_iam_user`     |
| GCP   | ❌ No                       | Users are external |
| Azure | ✅ Yes                      | `azuread_user`     |


Best Practice:
| Cloud | Recommended                    |
| ----- | ------------------------------ |
| AWS   | IAM Roles + SSO                |
| GCP   | IAM Roles on Google identities |
| Azure | Azure AD users / groups        |

# “AWS allows creating IAM users via Terraform, GCP does not manage users and only assigns roles to existing identities, while Azure manages users through Azure AD using the azuread provider, not azurerm.”


