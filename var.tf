variable "region" {
  default = "ap-south-1"

}
variable "zone1" {
  default = "ap-south-1a"
}
variable "amiID" {
  default = {

    ap-south-1 = "ami-02d26659fd82cf299"
    us-east-1  = "ami-0360c520857e3138f"

  }
}
variable "webuser" {
  default = "ubuntu"
}