# random id that will be used above to make the s3 bucket name unique
resource "random_id" "rand_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "s3" {
  bucket = "${var.BUCKETNAME}-${terraform.workspace}-${random_id.rand_id.hex}"
}

