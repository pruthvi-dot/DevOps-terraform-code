module "key" {
  source = "../key-pair"
  region_name = "us-east-1"
  key_name = "serge-key"
}

output "key-name" {
  value = aws_key_pair.ec2_key.key_name
}