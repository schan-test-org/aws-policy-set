############################# data : local #######################################
locals {
  region = var.aws_region
  # eks_package_bucket_name   = var.backend_s3_bucket_name
  # eks_package_bucket_key    = var.eks_s3_key
  # eks_package_bucket_region = var.region
}

############################# data : aws_caller #######################################
data "aws_caller_identity" "current" {

}

