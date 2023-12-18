variable "vpn_ip" {
    default = "116.50.30.20/32"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "ami" {
  default = "ami-0dbc3d7bc646e8516"
}
# variable "aws_iam_user" {
#   type = number
# }
variable "elb_name" {
  type = string
}
variable "az" {
  type = list
}
variable "timeout" {
  type = number
}
variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-east-2 = "t2.nano"
    us-west-1 = "t2.small"
  }
}
variable "list" {
  type = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}