resource "aws_instance" "my_vm" {
 ami           = var.ami //Ubuntu AMI
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}
resource "local_file" "public_ip_file"{
   filename = "ansible/inventory"
   content = aws_instance.my_vm.public_ip
}

