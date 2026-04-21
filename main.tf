resource "aws_vpc" "terraform_test_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = True
  enable_dns_support   = False

  tags = {
    Name = "${var.cloud_env}_terraform_test_vpc"
  }
  lifecycle {
    create_before_destroy = true
  }

