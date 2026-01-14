

aws-iam-terraform/
├── provider.tf
├── variables.tf
├── users.tf
├── groups.tf
├── policies.tf
├── roles.tf
└── outputs.tf

Creating below AWS IAM building block using terraform script:

| Building Block  | Terraform Resource                |
| --------------- | --------------------------------- |
| User            | `aws_iam_user`                    |
| Group           | `aws_iam_group`                   |
| Policy          | `aws_iam_policy`                  |
| Group → Policy  | `aws_iam_group_policy_attachment` |
| Role            | `aws_iam_role`                    |
| Role → Policy   | `aws_iam_role_policy_attachment`  |
| EC2 Role Bridge | `aws_iam_instance_profile`        |


