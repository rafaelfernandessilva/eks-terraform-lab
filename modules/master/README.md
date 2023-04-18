## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_role.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks-cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks-service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.sg_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ingress_https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_iam_policy_document.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | variável para definir a região | `any` | n/a | yes |
| <a name="input_cluster_k8s"></a> [cluster\_k8s](#input\_cluster\_k8s) | variável vpc cluster | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | variável nome cluster | `any` | n/a | yes |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | variável para definir a versão do k8s | `any` | n/a | yes |
| <a name="input_private_subnet_1"></a> [private\_subnet\_1](#input\_private\_subnet\_1) | variável para definir a subnet 1 | `any` | n/a | yes |
| <a name="input_private_subnet_2"></a> [private\_subnet\_2](#input\_private\_subnet\_2) | variável para definir a subnet 2 | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster"></a> [eks\_cluster](#output\_eks\_cluster) | Output Cluster EKS |
| <a name="output_eks_security_group"></a> [eks\_security\_group](#output\_eks\_security\_group) | Output security group |
