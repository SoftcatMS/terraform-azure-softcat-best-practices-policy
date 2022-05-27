resource "azurerm_policy_set_definition" "SoftcatTagGovernance" {
  name         = "softcat_tag_governance"
  policy_type  = "Custom"
  display_name = "Softcat Tag Governance"
  description  = "Contains Softcat Tag Governance policies"

  metadata = <<METADATA
    {
        "category": "Softcat Tag Audit"
    }
METADATA

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.AuditSoftcatTagSoftcatManaged.id
    reference_id         = azurerm_policy_definition.AuditSoftcatTagSoftcatManaged.id
    parameter_values     = <<PARAMETERS
    {
    	"tagName": {
    		"value": "softcat_managed_type"
    	}
    }
PARAMETERS
  }

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.AuditSoftcatTagOnResourceGroupSoftcatManaged.id
    reference_id         = azurerm_policy_definition.AuditSoftcatTagOnResourceGroupSoftcatManaged.id
    parameter_values     = <<PARAMETERS
    {
    	"tagName": {
    		"value": "softcat_environment"
    	}
    }
PARAMETERS
  }


  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.AuditSoftcatTagSoftcatMonitored.id
    reference_id         = azurerm_policy_definition.AuditSoftcatTagSoftcatMonitored.id
    parameter_values     = <<PARAMETERS
    {
    	"tagName": {
    		"value": "softcat_build_type"
    	}
    }
PARAMETERS
  }

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.AuditSoftcatTagOnResourceGroupSoftcatMonitored.id
    reference_id         = azurerm_policy_definition.AuditSoftcatTagOnResourceGroupSoftcatMonitored.id
    parameter_values     = <<PARAMETERS
    {
    	"tagName": {
    		"value": "SoftcatMonitored"
    	}
    }
PARAMETERS
  }

}
