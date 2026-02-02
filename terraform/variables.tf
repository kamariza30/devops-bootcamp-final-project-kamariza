variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/24"
}
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}
#Below code is to define the availability zone when using sandbox because default AZs might be exhausted. make sure to remove this variables in public and private subnet in vpc.tf
#variable "availability_zone" {
#  description = "AWS Availability Zone"
#  type        = string
# default     = "us-east-1a"
#}