##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {}
variable "region" {
  default = "ap-southeast-1"
}
variable "instance_type" {
  default = "t2.nano"
}
