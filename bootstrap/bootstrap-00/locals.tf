locals {
  name_prefix = "${var.project}-${var.owner}"

  tfstate_bucket_name = "${local.name_prefix}-global-tfstate"
  lock_table_name     = "${local.name_prefix}-global-locks"
  kms_key_alias       = "alias/${local.name_prefix}-global-kms"
  kms_key_name        = "${local.name_prefix}-global-kms"
}
