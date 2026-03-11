provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project
      Owner       = var.owner
      ManagedBy   = "terraform"
      Lifecycle   = "persistent"
      AutoDestroy = "false"
    }
  }
}