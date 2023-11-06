resource "aws_instance" "Roboshop" {
    for_each = var.instances
    ami = "ami-03265a0778a880afb"
    instance_type = each.value
    tags = {
        Name = each.key
    }
}

# output "public_ip" {
#     value = aws_instance.Roboshop.public_ip
# }
# output "private_ip" {
#     value = aws_instance.Roboshop.private_ip
# }

resource "aws_route53_record" "record" {
  for_each = aws_instance.Roboshop
  zone_id = "Z0997824248HW2XYA9N5U"
  name    = "${each.key}.venkateshamsonnalia143.online"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}