
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |


## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_nodes_roles](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.cloud-watch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.cni_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node_service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.eks_node_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_scale_options"></a> [auto\_scale\_options](#input\_auto\_scale\_options) | variável definir o auto scale | `any` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | variável para definir a região | `any` | n/a | yes |
| <a name="input_cluster_k8s"></a> [cluster\_k8s](#input\_cluster\_k8s) | variável vpc cluster | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | variável nome cluster | `any` | n/a | yes |
| <a name="input_eks_cluster"></a> [eks\_cluster](#input\_eks\_cluster) | variável informações cluster | `any` | n/a | yes |
| <a name="input_eks_security_group"></a> [eks\_security\_group](#input\_eks\_security\_group) | variável para definir o security group | `any` | n/a | yes |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | variável para definir a versão do k8s | `any` | n/a | yes |
| <a name="input_nodes_instance_sizes"></a> [nodes\_instance\_sizes](#input\_nodes\_instance\_sizes) | variável para definir o tamanho das instâncias | `any` | n/a | yes |
| <a name="input_private_subnet_1"></a> [private\_subnet\_1](#input\_private\_subnet\_1) | variável para definir a subnet 1 | `any` | n/a | yes |
| <a name="input_private_subnet_2"></a> [private\_subnet\_2](#input\_private\_subnet\_2) | variável para definir a subnet 2 | `any` | n/a | yes |

