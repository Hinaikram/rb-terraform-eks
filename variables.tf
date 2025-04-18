variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "cluster_name" {
  default = "demo-eks-cluster"
}

variable "cluster_version" {
  default = "1.27"
}