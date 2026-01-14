output "iam_user" {
  value = aws_iam_user.developer.name
}

output "iam_group" {
  value = aws_iam_group.developers.name
}

output "iam_role" {
  value = aws_iam_role.ec2_s3_role.name
}
