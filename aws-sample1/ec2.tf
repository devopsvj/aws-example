
##################################################################################
# RESOURCES - EC2
##################################################################################

resource "aws_instance" "my-dev-tf1-ec2-instance" {
  ami                    = data.aws_ami.my_dev_tf_ami_data.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.my_dev_tf_allow_ssh.id]
  tags = {
    Name = "my-dev-tf1-ec2"
    Owner = "devopsvj"
    Dept = "TF Learning"
  }

}

resource "aws_instance" "my-dev-tf2-ec2-instance" {
  ami                    = data.aws_ami.my_dev_tf_ami_data.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.my_dev_tf_allow_ssh.id]
  tags = {
    Name = "my-dev-tf2-ec2"
    Owner = "devopsvj"
    Dept = "TF Learning"

  }

}
