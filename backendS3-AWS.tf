

resource "aws_s3_bucket" "pastas3exa" {
  bucket = "epastas3exa-bucket"
}

resource "aws_s3_bucket_acl" "epastas3exa" {
  bucket = aws_s3_bucket.pastas3exa.id
  acl    = "private"

# colocando as tags no resource sem versionamento
tags = {
    Name     = "Pinhapastistoehbucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_pastas3exa" {
  bucket = aws_s3_bucket.pastas3exa.id
  versioning_configuration {
    status = "Enabled"
  }
}
