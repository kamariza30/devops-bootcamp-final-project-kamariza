#below code is to create an ECR repository for the final project
resource "aws_ecr_repository" "final_project" {
  name = "devops-bootcamp/final-project-kamariza"
  force_delete = true #to delete repository even if it contains images

  image_scanning_configuration {
    scan_on_push = true
}
    tags = {
        Name = "devops-bootcamp/final-project-kamariza"
}
}