terraform {
  backend "s3" {
    bucket = "cyberlab-lazar-new"
    region = "us-east-1"
    key = "networking.tfstate"
  }
}