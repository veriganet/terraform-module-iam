# ########
# Provider
# ########

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}


# #########
# terraform
# #########

# rest of the backend part will be filled by terragrunt
terraform {
  backend "s3" {}
}


# ########
# IAM User
# ########

resource "aws_iam_user" "this" {
  name = var.name
}


# ##########
# IAM Policy
# ##########

resource "aws_iam_policy" "this" {
  count       = var.policy != null ? 1 : 0
  name        = var.name
  description = var.policy_description
  policy      = var.policy
}


# #####################
# IAM Policy Attachment
# #####################

resource "aws_iam_user_policy_attachment" "this" {
  count      = var.policy != null ? 1 : 0
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this[0].arn
}


resource "aws_iam_user_policy_attachment" "these" {
  count = var.policies != null ? length(var.policies) : 0
  policy_arn = var.policies
  user = aws_iam_user.this.name
}

# ###############
# User Access Key
# ###############

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}
