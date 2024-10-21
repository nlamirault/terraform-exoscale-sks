# Copyright (C) 2021 Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "exoscale_sks_nodepool" "core" {
  count = length(var.node_pools)

  zone          = var.zone
  cluster_id    = exoscale_sks_cluster.cluster.id
  name          = var.node_pools[count.index].name
  instance_type = var.node_pools[count.index].instance_type
  size          = var.node_pools[count.index].size

  security_group_ids = [exoscale_security_group.this.id]
}
