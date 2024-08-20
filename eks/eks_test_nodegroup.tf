module "test_nodegroup" {
  source = "../modules/eks_node_group"
  region       = "ap-south-1"
  name         = "test_nodegroup"
  cluster_name = aws_eks_cluster.test.name
  tiers                 = local.test_node_group.tiers
  number_of_nodes       = local.test_node_group.number_of_nodes
  ami_type              = local.test_node_group.ami_type
  max_unavailable_nodes = local.test_node_group.max_unavailable
  cluster_oidc_issuer_url = aws_eks_cluster.test.identity[0].oidc[0].issuer
  cluster_oidc_issuer_arn = aws_iam_openid_connect_provider.test.arn
  subnet_id_list = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]
}
