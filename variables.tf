variable "region" {
  description = "AWS region"
  default     = "ap-northeast-1"
}

variable "iam_user_name" {
  description = "The name of the IAM user"
  default     = "example-user"
}

variable "iam_policy_name" {
  description = "The name of the IAM policy"
  default     = "ExampleAccessPolicy"
}

variable "iam_policy_actions" {
  description = "List of actions allowed by the IAM policy"
  default     = ["ecr:*"]
}