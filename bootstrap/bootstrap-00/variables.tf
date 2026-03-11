variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project" {
  type    = string
  default = "plugpantry-aws-lab"
}

variable "owner" {
  type    = string
  default = "jfluker"
}

variable "terraform_role_name" {
  type    = string
  default = "aws-terraform-role"
}

variable "account_id" {
  type = string
}

variable "force_destroy_state_bucket" {
  type    = bool
  default = false
}