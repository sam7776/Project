terraform {
  backend "s3" {
    bucket         = "mytflockfile"   
    key            = "env/dev/terraform.tfstate"   
    region         = "ap-south-1"
    encrypt        = true
  }
}
