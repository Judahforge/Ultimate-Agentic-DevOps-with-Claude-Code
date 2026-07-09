# Remote state backend (S3).
#
# Terraform cannot create the state bucket and use it as a backend in the same
# run, so this is intentionally commented out for the first apply.
#
# Bootstrap procedure:
#   1. Leave this block commented and run `terraform init` (local state).
#   2. Run `terraform apply` to create the S3 bucket + CloudFront resources.
#      (Optionally create a dedicated bucket for state — e.g.
#      "portfolio-site-tfstate" — either here in Terraform or manually.)
#   3. Uncomment the block below, set the correct bucket/key/region.
#   4. Run `terraform init -migrate-state` to move local state to S3.
#
# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-tfstate"
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }
