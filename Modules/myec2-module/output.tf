output "instance_id" {
  value = aws_instance.myec2.id
}

output "instance_details" {
  value = {
    public_ip = aws_instance.myec2.public_ip
    private_ip = aws_instance.myec2.private_ip
    instance_state = aws_instance.myec2.instance_state
  }
}