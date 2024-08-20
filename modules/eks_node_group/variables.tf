variable "subnet_id_list" {
  type = list(string)
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "name" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "tiers" {
  type    = list(string)
  default = ["t3.micro"]
}

variable "number_of_nodes" {
  type    = number
  default = 1
}

variable "ami_type" {
  type     = string
  nullable = true
  default  = null
}

variable "max_unavailable_nodes" {
  type    = number
  default = 1
}

variable "cluster_oidc_issuer_url" {
  type = string
}

variable "cluster_oidc_issuer_arn" {
  type = string
}
