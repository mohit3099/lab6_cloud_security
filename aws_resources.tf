resource "aws_instance" "lab6_cloud_security" {
  ami           = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  
  tags = {
    Name        = "Lab6Instance"
    Environment = "Production"
    Owner       = "mohit"
  }
iam_instance_profile = aws_iam_instance_profile.example_profile.name
}

resource "aws_iam_instance_profile" "example_profile" {
  name = "example_profile"
  role = aws_iam_role.example_role.name
} 
