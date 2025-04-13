resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "private" {
  count             = 2
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.0.${count.index}.0/24"
  availability_zone = element(["ap-south-1a", "ap-south-1b"], count.index)
}

output "vpc_id" {
  value = aws_vpc.this.id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}