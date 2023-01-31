resource "aws_s3_bucket" "cyberlab-lazar" {
  bucket = var.bucket
  
  acl = var.acl

  tags = var.s3_tags
}

resource "aws_s3_bucket_policy" "cyberlab" {
  bucket = aws_s3_bucket.cyberlab-lazar.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowPublicRead",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::cyberlab-lazar-new/*"
    }
  ]
}
POLICY
}
