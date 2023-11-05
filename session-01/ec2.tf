resource "aws_instance" "i_will_decide" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]
    tags = {
        Name = var.instance_name[count.index]
    }
}

resource "aws_route53_record" "record" {
  count = 10
  zone_id = "Z0997824248HW2XYA9N5U"
  name    = "${var.instance_name[count.index]}.venkateshamsonnalia143.online"
  type    = "A"
  ttl     = 1
  records = [aws_instance.i_will_decide[count.index].private_ip]
}

