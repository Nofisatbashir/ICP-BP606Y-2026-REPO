terraform {
  backend "s3" {
    bucket         = "terraform-state-oyin"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}