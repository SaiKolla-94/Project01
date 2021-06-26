resource "aws_instance" "test" {
  count = "${var.instance_count}
  ami = "${lookup(var.ami,AWS_REGION)}"
  instannce_type = "${var.instannce_type}"
  key_name = "{var.key_name}"
  security_groups = [ "${aws_security_group.jenkinssg.name}" ]
  user_data = "${file("install_apache.sh")}"

  tags = {
    name = "NewEC2Terraform-${count.index + 1}"
  }
}