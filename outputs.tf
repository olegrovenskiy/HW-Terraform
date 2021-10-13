
output "AWS_account_ID" {
  value = data.aws_caller_identity.current.account_id
}

output "AWS_user_ID" {
  value = data.aws_caller_identity.current.user_id
}

output "AWS_region" {
  value = data.aws_region.current
}


output "instance_ip_addr" {
  value = aws_instance.Netology-HWork.public_ip
}


output "Subnet_ID" {
  value = aws_instance.Netology-HWork.subnet_id
}
