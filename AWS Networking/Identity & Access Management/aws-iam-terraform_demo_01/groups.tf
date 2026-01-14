resource "aws_iam_group" "developers" {
  name = "developers-group"
}


# Add user to group:
resource "aws_iam_user_group_membership" "developer_membership" {
  user = aws_iam_user.developer.name

  groups = [
    aws_iam_group.developers.name
  ]
}


# Permissions are assigned via groups
# Users inherit group permissions




