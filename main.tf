resource "azurerm_subscription_policy_assignment" "SoftcatTagging" {
  name                 = "softcat-tagging-governance"
  policy_definition_id = azurerm_policy_set_definition.SoftcatTagGovernance.id
  description          = "Enforce Softcat Tagging"
  display_name         = "Softcat Tagging Governance"
  subscription_id      = data.azurerm_subscription.current.id
  location             = var.location
  enforce              = true

  identity {
    type = "SystemAssigned"
  }

  metadata = <<METADATA
    {
    "category": "Softcat Tag Audit"
    }
METADATA
}
