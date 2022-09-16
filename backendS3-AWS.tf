

resource "aws_s3_bucket" "pastas3exa" {
  bucket = "epastas3exa-bucket"
}

resource "aws_s3_bucket_acl" "epastas3exa" {
  bucket = aws_s3_bucket.pastas3exa.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_pastas3exa" {
  bucket = aws_s3_bucket.pastas3exa.id
  versioning_configuration {
    status = "Enabled"
  }
}
