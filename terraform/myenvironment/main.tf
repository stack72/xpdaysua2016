provider "aws" {
  region = "${var.region["aws"]}"
}























resource "aws_key_pair" "ssh_key" {
  key_name = "xpdays"
  public_key = "${file("ssh/xpdays.pub")}"
}

















/*data "aws_availability_zones" "zones" {}

module "aws_vpc" {
  source = "../modules/vpc"

  name = "xpdays"

  cidr = "10.0.0.0/16"
  private_subnets = ["10.0.160.0/19", "10.0.192.0/19", "10.0.224.0/19"]
  public_subnets = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  availability_zones = ["${data.aws_availability_zones.zones.names}"]
}*/















/*
module "vpn" {
    source = "../modules/vpn"

    vpc_id = "${module.aws_vpc.vpc_id}"
    public_subnets = ["${module.aws_vpc.public_subnets}"]
    ami = "${var.openvpn_amis[var.region["aws"]]}"
    key_name = "${aws_key_pair.ssh_key.key_name}"
    tag_name = "xpdays"
}
output "vpn_setup_command" {
    value = "${format("ssh openvpnas@%s", module.vpn.vpn_ip)}"
}
output "vpn_web_console" {
  value = "${format("https://%s/", module.vpn.vpn_ip)}"
}*/













/*data "aws_ami" "consul_ami" {
  most_recent = true
  filter {
    name = "name"
    values = ["consul-*"]
  }
}
module "consul" {
    source = "../modules/consul"

    cluster_name = "xpdays"

    ami = "${data.aws_ami.consul_ami.id}"
    vpc_id = "${module.aws_vpc.vpc_id}"
    subnets = "${module.aws_vpc.private_subnets}"

    key_name = "${aws_key_pair.ssh_key.key_name}"
    instance_type = "t2.micro"
}
output "consul_web_ui" {
  value = "${format("http://%s:8500/", module.consul.elb_address)}"
}*/
