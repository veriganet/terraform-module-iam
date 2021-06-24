output "key" {
  value = aws_iam_access_key.this.secret
}

output "id" {
  value = aws_iam_access_key.this.id
}

output "user_name" {
  value = aws_iam_user.this.name
}

output "user_arn" {
  value = aws_iam_user.this.arn
}

output "tfversion" {
  value = var.tfversion
}