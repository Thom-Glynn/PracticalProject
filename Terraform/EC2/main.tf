resource "aws_instance" "jenkins_VM" {
  ami                    = var.ubuntu_ami_id
  instance_type          = var.instance_type
  key_name               = "practical_key"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "jenkins_VM"
    project = "practical"
  }
}

resource "aws_instance" "py_test_VM" {
  ami                    = var.ubuntu_ami_id
  instance_type          = var.instance_type
  key_name               = "practical_key"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

    tags = {
    Name = "test_VM"
    project = "practical"
  }

}
