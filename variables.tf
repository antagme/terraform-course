variable gcp_ip_cidr_range {
 default =  "10.0.1.0/24"
 type = "string"
 description = "IP CIDR Range For Google VPC"
}
variable "subnet_names"{
 type = "map"
 default = {
  subnet1 = "subnet1"
  subnet2 = "subnet2"
 }
}
output "test_output" {
 value = "I am testing that faggot"
}

