variable "aws_profile" {
  description = "Name of the AWS config / credential profile"
  type        = string
}

variable "region" {
  description = "AWS Region to be used (it effects all resources)"
  type        = string
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "policy" {
  description = "Policy document in JSON format"
  type        = string
  default     = null
}

variable "policies" {
  description = "List of policy ARNs"
  type = list(string)
  default = null
}

variable "policy_description" {
  description = "Description for the policy"
  type        = string
  default     = ""
}

variable "tfversion" {
  description = "Current terraform version"
  type        = string
  default     = null
}