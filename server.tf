resource "aws_instance" "web" {
    ami = data.aws_ami.amazon_linux_2.id
    instance_type = var.instance_type
    security_groups = [aws_security_group.web_sg.name]

    user_data = <<EOF
    #!/bin/bash
    yum update -y
    amazon-linux-extras install nginx1 -y
    systemctl enable nginx
    systemctl start nginx
    EOF

    tags = {
        Name = "nginx-web-server"
    }
}