terraform {
  backend "s3" {
    bucket = "terraformstate2610"
    key    = "TerraformState/Backend"
    region = "ap-south-1"
  }
}