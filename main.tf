resource "aws_instance" "terraform_web" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = "terraform_web-key"
  vpc_security_group_ids = [aws_security_group.terraform-sg.id]
  availability_zone      = var.zone1

  tags = {
    Name    = "terraform-web"
    Project = "terraform"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = var.webuser
    private_key = file("firstkey")
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > web_instance_ip.txt"
  }
}
resource "aws_ec2_instance_state" "web_instance" {
  instance_id = aws_instance.terraform_web.id
  state       = "running"
}
output "web_public_ip" {
  description = "Public IP of the web instance"
  value       = aws_instance.terraform_web.public_ip
}
output "web_private_ip" {
  description = "Private IP of the web instance"
  value       = aws_instance.terraform_web.private_ip
}