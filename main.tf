resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
    Environment = var.environment
  }
}
resource "aws_s3_bucket_versioning" "my_versioning" {
  bucket = aws_s3_bucket.my-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
