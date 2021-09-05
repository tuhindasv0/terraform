provider "aws" {
  region = terraform.workspace == "default" ? "us-east-1" : "us-west-2"
}