locals {
  region      = "ap-south-1"
  service_name           = "test-service"
  service_docker_image  = "443235607914.dkr.ecr.ap-south-1.amazonaws.com/snaptrude_assignment:latest"
  service_replica_count = 1
  service_type            = "LoadBalancer"
  service_target_port     = 6041
  service_port            = 80
  node_group              = "test_nodegroup"
}
