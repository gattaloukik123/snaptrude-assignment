resource "kubernetes_deployment" "deployment" {
  metadata {
    name      = "${var.service_name}-deployment"
  }
  spec {
    replicas = var.service_replica_count
    selector {
      match_labels = {
        app = var.service_name
      }
    }
    template {
      metadata {
        labels = {
          app = var.service_name
        }
      }
      spec {
        node_selector = {
          group = var.node_group
        }
        container {
          image = var.service_docker_image
          name  = var.service_name
          port {
            container_port = var.service_target_port
          }
          env {
            name  = "PORT"
            value = tostring(var.service_target_port)
          }
          resources {
            limits = {
              cpu    = "500m"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
