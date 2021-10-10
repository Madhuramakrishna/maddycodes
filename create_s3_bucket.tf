resource "aws_s3_bucket" "jha" {
  bucket = "jenkinshatostore"
  acl    = "private"

  tags = {
    Name      = "jenkha"
    Environment = "Dev"
  }
}
