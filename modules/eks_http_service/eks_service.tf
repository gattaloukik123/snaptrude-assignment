resource "kubernetes_service" "service" {
  metadata {
    name = "${var.service_name}-service"
  }
  spec {
    selector = {
      app = kubernetes_deployment.deployment.spec[0].template[0].metadata[0].labels.app
    }
    type = var.service_type
    port {
      port        = var.service_port
      target_port = var.service_target_port
    }
  }
}