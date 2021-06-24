module "user" {
  source = "../../user"
  aws_profile = ""
  region = "eu-central-1"

  name = "dice-test-user-1"
  policy_description = "dice-test-user-1"

  policies = [""]

#  policy = <<EOF
#EOF
}

output "id" {
  value = module.user.id
}

output "key" {
  value = module.user.key
}

output "user_name" {
  value = module.user.user_name
}

output "user_arn" {
  value = module.user.user_arn
}
