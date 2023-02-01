output "aws_instance_public_dns" {
  value = aws_instance.ec2.public_dns
}