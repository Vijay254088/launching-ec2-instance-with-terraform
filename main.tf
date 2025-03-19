provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_west_1"
  region = "us-west-1"
}

resource "aws_instance" "ec2_us_east_1" {
  provider      = aws.us_east_1
  ami          = "ami-08b5b3a93ed654d19"  # Update with a valid AMI ID for us-east-1
  instance_type = "t2.micro"
  
  tags = {
    Name = "EC2-US-East-1"
  }
}

resource "aws_instance" "ec2_us_west_1" {
  provider      = aws.us_west_1
  ami          = "ami-01eb4eefd88522422"  # Update with a valid AMI ID for us-west-1
  instance_type = "t2.micro"
  
  tags = {
    Name = "EC2-US-West-1"
  }
}
