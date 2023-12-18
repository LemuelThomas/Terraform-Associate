resource "aws_instance" "myec2" {
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    count = 3
    tags = {
        Name = var.ec2_names[count.index]
    }
}