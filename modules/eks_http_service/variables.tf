variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "cluster_endpoint" {
  type = string
}

variable "cluster_ca_certificate_base64" {
  type = string
}

variable "node_group" {
  type     = string
  nullable = true
}

variable "service_name" {
  type = string
}

variable "service_type" {
  type    = string
  default = "LoadBalancer"
}

variable "service_port" {
  type    = number
  default = 80
}

variable "service_target_port" {
  type    = number
  default = 6041
}

variable "service_docker_image" {
  type = string
}

variable "service_replica_count" {
  type    = string
  default = 1
}
