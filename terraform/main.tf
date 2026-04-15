provider "aws" {
  region = "eu-west-1"
}

#resource "aws_s3_bucket" "test" {
#  bucket = "lms-terraform-test-523473407799"
#}
resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "test" {
  bucket = "lms-terraform-${random_id.suffix.hex}"
}
