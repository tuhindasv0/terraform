#Adding A AWS provider
provider "aws" {
  alias  = "account-1"
  region = "us-east-1"
}
#Replica copy of same provider
provider "aws" {
  alias  = "account-2"
  region = "us-west-2"
}

#Creating a resource using 1st Provider
resource "aws_sns_topic" "topic-east-1" {
  provider = aws.account-1
  name     = "topic-1"
}
#Creating a resource using other Provider
resource "aws_sns_topic" "topic-west-2" {
  provider = aws.account-2
  name     = "topic-2"

}
