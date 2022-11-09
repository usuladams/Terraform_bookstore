output "instance_public_ip" {
#value = aws_instance.tfmyec2.*.public_ip

value = "http://${aws_instance.tfmyec2[0].public_ip}"

}

