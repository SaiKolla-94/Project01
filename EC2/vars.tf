variable "ami" {
  type = "map"

  default = {
    "us-east-1 = "ami-0ee02acd56a52998e"
#    us-west-2 = "ami-06b94666"
#    eu-west-1 = "ami-844e0bf7"
  }
}

variable "instance_count" {
  default = "2"
}

varible "instance_type" {
  default = t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}

varible "key_name" {
  description = "key name for the instance"
  default = "key"
}

