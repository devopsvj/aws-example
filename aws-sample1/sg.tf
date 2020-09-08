##################################################################################
# RESOURCES - SECURITY GROUPS
##################################################################################

resource "aws_security_group" "my_dev_tf_allow_ssh" {
  name        = "nginx_dev_demo"
  description = "Allow ports for ssh connection"
  vpc_id      = aws_default_vpc.my-dev-tf-vpc-default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
