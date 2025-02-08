terraform {
  backend "s3" {
    bucket         = "fetquest-data"
    key            = "fetquest-python/terraform.tfstate"
    region         = "eu-north-1"
  }
}
