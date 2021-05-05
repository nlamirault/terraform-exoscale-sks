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

variable "addons" {
  type        = list(string)
  description = "A list of optional add-ons to be deployed in the SKS cluster control plane"
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
