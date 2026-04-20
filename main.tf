resource "aws_vpc" "terraform_test_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${var.cloud_env}_terraform_test_vpc"
  }
  lifecycle {
    create_before_destroy = true
  }

