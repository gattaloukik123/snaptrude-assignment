module "service" {
  source = "../../modules/eks_http_service"
  region             = local.region
  cluster_name                  = var.cluster_name
  cluster_endpoint              = var.cluster_endpoint
  cluster_ca_certificate_base64 = var.cluster_ca_certificate_base64
  node_group                    = local.node_group

  service_name            = local.service_name
  service_docker_image    = local.service_docker_image
  service_replica_count   = local.service_replica_count
  service_type            = local.service_type
  service_target_port     = local.service_target_port
  service_port            = local.service_port
}
