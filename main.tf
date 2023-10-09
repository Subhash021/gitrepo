

Total download size: 24 M
Installed size: 77 M
Downloading packages:
warning: /var/cache/yum/x86_64/2/hashicorp/packages/terraform-1.6.0-1.x86_64.rpm: Header V4 RSA/SHA256 Signature, key ID a621e701: NOKEY
Public key for terraform-1.6.0-1.x86_64.rpm is not installed
terraform-1.6.0-1.x86_64.rpm                                                                                                           |  24 MB  00:00:00
Retrieving key from https://rpm.releases.hashicorp.com/gpg
Importing GPG key 0xA621E701:
 Userid     : "HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>"
 Fingerprint: 798a ec65 4e5c 1542 8c8e 42ee aa16 fcbc a621 e701
 From       : https://rpm.releases.hashicorp.com/gpg
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Verifying  : terraform-1.6.0-1.x86_64                                                                                                                   1/1

Installed:
  terraform.x86_64 0:1.6.0-1

Complete!
[root@ip-172-31-16-198 ~]# aws configure
AWS Access Key ID [None]: AKIAQ56ZCQUCXLT56NV3
AWS Secret Access Key [None]: 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
Default region name [None]: eu-west-2
Default output format [None]: table
[root@ip-172-31-16-198 ~]# terraform init
Terraform initialized in an empty directory!

The directory has no Terraform configuration files. You may begin working
with Terraform immediately by creating Terraform configuration files.
[root@ip-172-31-16-198 ~]# vim main.tf
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "six" {
  bucket = "devopsbysubhashterraserverbucketoo99"
}

resource "aws_iam_user" "seven" {
for_each = var.user_names
name = each.value
}

variable "user_names" {
description = "*"
type = set(string)
default = ["user1", "user2", "user3", "user4"]
}

resource "aws_ebs_volume" "eight" {
 availability_zone = "eu-west-2a"
  size = 40
  tags = {
    Name = "ebs-001"
  }
}

