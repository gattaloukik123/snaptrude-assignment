locals {
  region      = "ap-south-1"

  test_node_group  = {
        tiers           = ["t3.micro"]
        number_of_nodes = 1
        ami_type        = "AL2_x86_64"
        max_unavailable = 1
      }
}
