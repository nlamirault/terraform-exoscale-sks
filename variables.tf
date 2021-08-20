variable "name" {
  description = "The name of the SKS cluster."
  type        = string
}

variable "zone" {
  description = "The name of the zone to deploy the SKS cluster into."
  type        = string
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version of the SKS cluster control plane"
}

variable "service_level" {
  type        = string
  description = "The service level of the SKS cluster control plane"
}

variable "cni" {
  type        = string
  description = "The Kubernetes CNI plugin to be deployed in the SKS cluster control plane"
}

variable "exoscale_ccm" {
  type        = bool
  description = "Deploy the Exoscale Cloud Controller Manager in the SKS cluster control plane_"
  default     = true
}

variable "metrics_server" {
  type        = bool
  description = "Deploy the Kubernetes Metrics Server in the SKS cluster control plane"
  default     = true
}

variable "auto_upgrade" {
  type        = bool
  description = "Enable automatic upgrading of the SKS cluster control plane Kubernetes version"
  default     = true
}

variable "node_pools" {
  description = "The SKS node pools to create."
  type = list(object({
    name           = string
    instance_type  = string
    size           = number
  }))
  default = []
}
