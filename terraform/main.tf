provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "k8s_master" {
  ami           = "ami-0abcdef12345"
  instance_type = "t2.medium"

  tags = {
    Name = "k8s-control-plane"
  }
}

resource "aws_instance" "k8s_worker" {
  ami           = "ami-0abcdef12345"
  instance_type = "t2.medium"

  tags = {
    Name = "k8s-worker-1"
  }
}
