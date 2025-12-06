resource "aws_ami_from_instance" "web_ami" {
    name = "joy-nginx-ami"
    source_instance_id = aws_instance.builder.id
    depends_on = [aws_instance.builder]
}

