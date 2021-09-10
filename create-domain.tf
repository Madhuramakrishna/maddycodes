resource "aws_route53_zone" "maddy" {
  name = "maddy.suhas.com"
}

resource "aws_s3_bucket" "mb" {
     bucket = "maddy-suhas.local"
     acl    = "private"
}
