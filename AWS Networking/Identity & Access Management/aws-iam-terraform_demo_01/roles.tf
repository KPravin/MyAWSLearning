resource "aws_iam_role" "ec2_s3_role" {
  name = "ec2-s3-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Role has no credentials
# Role is assumed by AWS services
# sts:AssumeRole is mandatory


# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "ec2_attach_s3_policy" {
  role       = aws_iam_role.ec2_s3_role.name
  policy_arn = aws_iam_policy.s3_read_only.arn
}


# Same policy reused for:
#    - Users (via group)
#    - Roles (via attachment)
# This is best practice


# Instance Profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2-instance-profile"
  role = aws_iam_role.ec2_s3_role.name
}

# EC2 cannot directly use role
# Instance Profile is a bridge