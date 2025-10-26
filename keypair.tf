resource "aws_key_pair" "terraform_web_key" {
  key_name   = "terraform_web-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEulOB79arsvcsDjHtMecBavyW+IcfPNPLgt95bjhGco shatr@PC"
}