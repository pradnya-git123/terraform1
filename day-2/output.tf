output "publicip" {
    value = aws_instance.dev.public_ip
    description = "knowing public ip value"

  
}
output "privateip" {
    value = aws_instance.dev.private_ip
    description = "knowing private ip value"
    sensitive = true
}
