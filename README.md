# terraform-azurerm-vpcpeer

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-vpcpeer.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-vpcpeer.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-vpcpeer/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-vpcpeer&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-vpcpeer/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-vpcpeer&benchmark=INFRASTRUCTURE+SECURITY)

```terraform
module "peer" {
  source                   = "JamesWoolfenden/peer/azurerm"
  version                  = "0.2.0"
  resource_group_a         = data.azurerm_resource_group.example.name
  resource_group_b         = data.azurerm_resource_group.example.name
  vnet_name_a              = "examplea"
  vnet_name_b              = "exampleb"
}
```

Expand on these values to tag all your taggable resources.

This module should be run before nearly anything else as it sets up the remote state store. To do this it needs to be run twice. The first time to create the storage and also its own remote state file.
The second run pushes its own state to the state store.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.exampleb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_virtual_networka"></a> [azurerm\_virtual\_networka](#input\_azurerm\_virtual\_networka) | n/a | <pre>object({<br>    name                = string,<br>    id                  = string,<br>    resource_group_name = string,<br>    address_space       = list(string),<br>    guid                = string,<br>  })</pre> | n/a | yes |
| <a name="input_azurerm_virtual_networkb"></a> [azurerm\_virtual\_networkb](#input\_azurerm\_virtual\_networkb) | n/a | <pre>object({<br>    name                = string,<br>    id                  = string,<br>    resource_group_name = string,<br>    address_space       = list(string),<br>    guid                = string,<br>  })</pre> | n/a | yes |
| <a name="input_peername"></a> [peername](#input\_peername) | n/a | `string` | `"peer"` | no |
| <a name="input_resource_group_a"></a> [resource\_group\_a](#input\_resource\_group\_a) | n/a | `any` | n/a | yes |
| <a name="input_resource_group_b"></a> [resource\_group\_b](#input\_resource\_group\_b) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang

resource "azurerm_role_definition" "terraform_pike" {
  role_definition_id = local.uuid
  name               = "terraform_pike"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions = [
    "Microsoft.Network/virtualNetworks/peer/action",
    "Microsoft.Network/virtualNetworks/read",
    "Microsoft.Network/virtualNetworks/virtualNetworkPeerings/delete",
    "Microsoft.Network/virtualNetworks/virtualNetworkPeerings/read",
    "Microsoft.Network/virtualNetworks/virtualNetworkPeerings/write"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

locals {
  uuid = uuid()
}

data "azurerm_subscription" "primary" {
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-vpcpeer/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
