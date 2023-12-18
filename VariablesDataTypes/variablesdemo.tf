resource "aws_security_group" "var_demo" {
    name = "kplabs-variables"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 50
        to_port = 50
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }
}

resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.types["us-east-1"]
}
