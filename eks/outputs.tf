output "test_cluster_name" {
  value = aws_eks_cluster.test.name
}

output "test_cluster_endpoint" {
  value = aws_eks_cluster.test.endpoint
}

output "test_cluster_ca_certificate_base64" {
  value = aws_eks_cluster.test.certificate_authority[0].data
}

output "cluster_autoscaler_role_arn" {
  value = module.test_nodegroup.cluster_autoscaler_role_arn
}