# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

# terraform {
#   required_version = "1.3.7"
# #   backend "gcs" {
# #     bucket = "formlabs-tf-state"
# #     prefix = "terraform/state/1.3.7/RM"
# #   }
# }


terraform {
  required_version = ">=1.3.7"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/1.3.7/formlabs-org"
  }
}