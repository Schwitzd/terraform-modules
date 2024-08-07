/**
 * # opnsense-firewall-alias
 *
 */

resource "opnsense_firewall_alias" "main" {
  count = length(var.firewall_aliases)

  name        = var.firewall_aliases[count.index].name
  type        = var.firewall_aliases[count.index].type
  content     = var.firewall_aliases[count.index].content
  stats       = var.firewall_aliases[count.index].stats
  description = var.firewall_aliases[count.index].description
}
