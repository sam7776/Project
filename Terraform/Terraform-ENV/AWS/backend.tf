terraform {
  backend "s3" {
    bucket  = "tf-backend-13"
    key     = "dev/terraform.tfstate"
    region  = "ap-south-1"
    dynamodb_table = "lockTable"
    encrypt = true
  }
}
