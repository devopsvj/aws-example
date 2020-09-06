##################################################################################
# OUTPUT
##################################################################################

output "aws_instance_public_dns" {
  value = aws_instance.my-tf1-ec2-instance.public_dns
}

output "aws_instance_arn" {
  value = aws_instance.my-tf1-ec2-instance.arn
}