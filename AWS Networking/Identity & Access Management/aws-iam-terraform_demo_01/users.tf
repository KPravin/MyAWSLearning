resource "aws_iam_user" "developer" {
  name = "developer-user"
  path = "/"
}


# IAM User = human or application
# No permissions yet → user can do NOTHING

# path = "/" means the user is placed at the root level of the IAM namespace.
# The path attribute in AWS IAM specifies a hierarchical path where the IAM user is organized. It's similar to a directory structure.
