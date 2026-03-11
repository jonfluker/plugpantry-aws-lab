resource "aws_kms_key" "terraform" {
  description             = "KMS key for Terraform remote state encryption"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = local.kms_key_name
  }
}

resource "aws_kms_alias" "terraform" {
  name          = local.kms_key_alias
  target_key_id = aws_kms_key.terraform.key_id

  lifecycle {
    prevent_destroy = true
  }
}
