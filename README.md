# terraform-exoscale-sks

Terraform module which configure a Kubernetes cluster on Exoscale

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| exoscale | >= 0.28.0 |

## Providers

| Name | Version |
|------|---------|
| exoscale | >= 0.28.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [exoscale_security_group](https://registry.terraform.io/providers/exoscale/exoscale/0.28.0/docs/resources/security_group) |
| [exoscale_security_group_rules](https://registry.terraform.io/providers/exoscale/exoscale/0.28.0/docs/resources/security_group_rules) |
| [exoscale_sks_cluster](https://registry.terraform.io/providers/exoscale/exoscale/0.28.0/docs/resources/sks_cluster) |
| [exoscale_sks_nodepool](https://registry.terraform.io/providers/exoscale/exoscale/0.28.0/docs/resources/sks_nodepool) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auto\_upgrade | Enable automatic upgrading of the SKS cluster control plane Kubernetes version | `bool` | `true` | no |
| cni | The Kubernetes CNI plugin to be deployed in the SKS cluster control plane | `string` | n/a | yes |
| exoscale\_ccm | Deploy the Exoscale Cloud Controller Manager in the SKS cluster control plane\_ | `bool` | `true` | no |
| kubernetes\_version | The Kubernetes version of the SKS cluster control plane | `string` | n/a | yes |
| metrics\_server | Deploy the Kubernetes Metrics Server in the SKS cluster control plane | `bool` | `true` | no |
| name | The name of the SKS cluster. | `string` | n/a | yes |
| node\_pools | The SKS node pools to create. | <pre>list(object({<br>    name          = string<br>    instance_type = string<br>    size          = number<br>  }))</pre> | `[]` | no |
| service\_level | The service level of the SKS cluster control plane | `string` | n/a | yes |
| zone | The name of the zone to deploy the SKS cluster into. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| sks\_endpoint | The Kubernetes public API endpoint of the SKS cluster |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
