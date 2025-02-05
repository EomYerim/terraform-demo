provider "aws" {
  region = "ap-northeast-2"
}
module "webserver_cluster" {
 source = "../../../modules/services/webserver-cluster"
 cluster_name = "Webservers-Stage"
 instance_type = "t3.micro"
 min_size = 2
 max_size = 2
}
