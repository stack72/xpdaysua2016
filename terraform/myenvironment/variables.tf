variable "region" {
  type = "map"
  default = {
    aws = "eu-west-1"
    azure = "West Europe"
  }
}

variable "openvpn_amis" {
  type = "map"
  default = {
    eu-west-1 = "ami-f53d7386"
    eu-central-1 = "ami-6bc33704"
    us-west-1 = "ami-4a02492a"
    us-west-2 = "ami-d3e743b3"
    us-east-1 = "ami-bc3566ab"
    us-east-2 = "ami-10306a75"
  }
}
