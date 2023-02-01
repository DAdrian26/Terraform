provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

#### INSTANCES

resource "aws_instance" "ec2" {

ami  =      var.ec2_ami
instance_type =  var.instance_type

count = var.ec2_count
vpc_security_group_ids = [aws_security_group.ec2-sg.id]
subnet_id = aws_subnet.subnet1.id

tags = {
    
    #Name = "${var.team}.${var.department}-${count.index}"
    Name = "${var.team}.${var.department}"
}

}

