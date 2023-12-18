variable "ec2_names" {
  type    = list(any)
  default = ["dev-ec2", "stage-ec2", "prod-ec2"]
}
variable "istest" {
  type = bool
}