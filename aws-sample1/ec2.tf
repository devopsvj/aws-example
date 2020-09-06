
##################################################################################
# RESOURCES - EC2
##################################################################################

resource "aws_instance" "my-tf1-ec2-instance" {
  ami                    = data.aws_ami.my_first_ami_data.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "my-tf1-ec2"
  }

}

resource "aws_instance" "my-tf2-ec2-instance" {
  ami                    = data.aws_ami.my_first_ami_data.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "my-tf2-ec2"
  }

}
