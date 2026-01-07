#below code is to create s3 bucket with versioning enabled
resource "aws_s3_bucket" "final_project_bucket" {
  bucket = "devops-bootcamp-final-project-kamariza7" #bucket name must be globally unique
  force_destroy = true #to allow terraform to delete non-empty bucket
    
    tags = {
        Name = "devops-bootcamp-final-project-kamariza7"
    }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.final_project_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}