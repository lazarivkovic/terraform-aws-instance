data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "cyberlab-lazar-new"
    region = "us-east-1"
    key = "networking.tfstate"
  }
}