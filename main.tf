provider "aws" {
  region = var.region
}

resource "aws_iam_user" "example_user" {
  name = var.iam_user_name
}

resource "aws_iam_access_key" "example_user_key" {
  user = aws_iam_user.example_user.name
}

resource "aws_iam_policy" "example_access_policy" {
  name        = var.iam_policy_name
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = var.iam_policy_actions
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user_policy_attachment" "example_user_policy_attach" {
  user       = aws_iam_user.example_user.name
  policy_arn = aws_iam_policy.example_access_policy.arn
}
