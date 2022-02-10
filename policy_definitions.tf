resource "azurerm_policy_definition" "AuditSoftcatTagSoftcatManaged" {

  name         = "AuditSoftcatTag_SoftcatManaged"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Audit Softcat Tag SoftcatManaged"
  description  = "Audits existence of a tag SoftcatManaged. Does not apply to resource groups."

  metadata = <<METADATA
    {
        "category": "Softcat Tag Audit"
    }

METADATA

  policy_rule = <<POLICY_RULE
    {
    	"if": {
    		"field": "[concat('tags[', parameters('tagName'), ']')]",
    		"exists": "false"
    	},
    	"then": {
    		"effect": "audit"
    	}
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    	"tagName": {
    		"type": "String",
    		"metadata": {
                "displayName" : "Softcat Tag SoftcatManaged",
                "description" : "Name of the tag, such as SoftcatManaged"
    		}
    	}
    }
PARAMETERS

}

resource "azurerm_policy_definition" "AuditSoftcatTagOnResourceGroupSoftcatManaged" {

  name         = "AuditSoftcatTagOnResourceGroup_SoftcatManaged"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Audit Softcat Tag On Resource Groups SoftcatManaged"
  description  = "Audits existence of a tag SoftcatManaged on resource groups."


  metadata = <<METADATA
    {
        "category": "Softcat Tag Audit"
    }

METADATA

  policy_rule = <<POLICY_RULE
    {
    	"if": {
    		"allOf": [{
    				"field": "type",
    				"equals": "Microsoft.Resources/subscriptions/resourceGroups"
    			},
    			{
    				"field": "[concat('tags[', parameters('tagName'), ']')]",
    				"exists": "false"
    			}
    		]
    	},
    	"then": {
    		"effect": "audit"
    	}
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    	"tagName": {
    		"type": "String",
    		"metadata": {
                "displayName" : "Softcat Tag SoftcatManaged",
                "description" : "Name of the tag, such as SoftcatManaged"
    		}
    	}
    }
PARAMETERS

}



resource "azurerm_policy_definition" "AuditSoftcatTagSoftcatMonitored" {

  name         = "AuditSoftcatTag_SoftcatMonitored"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Audit Softcat Tag SoftcatMonitored"
  description  = "Audits existence of a tag SoftcatMonitored. Does not apply to resource groups."

  metadata = <<METADATA
    {
        "category": "Softcat Tag Audit"
    }

METADATA

  policy_rule = <<POLICY_RULE
    {
    	"if": {
    		"field": "[concat('tags[', parameters('tagName'), ']')]",
    		"exists": "false"
    	},
    	"then": {
    		"effect": "audit"
    	}
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    	"tagName": {
    		"type": "String",
    		"metadata": {
                "displayName" : "Softcat Tag SoftcatMonitored",
                "description" : "Name of the tag, such as SoftcatMonitored"
    		}
    	}
    }
PARAMETERS

}

resource "azurerm_policy_definition" "AuditSoftcatTagOnResourceGroupSoftcatMonitored" {

  name         = "AuditSoftcatTagOnResourceGroup_SoftcatMonitored"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Audit Softcat Tag On Resource Groups SoftcatMonitored"
  description  = "Audits existence of a tag SoftcatMonitored on resource groups."


  metadata = <<METADATA
    {
        "category": "Softcat Tag Audit"
    }

METADATA

  policy_rule = <<POLICY_RULE
    {
    	"if": {
    		"allOf": [{
    				"field": "type",
    				"equals": "Microsoft.Resources/subscriptions/resourceGroups"
    			},
    			{
    				"field": "[concat('tags[', parameters('tagName'), ']')]",
    				"exists": "false"
    			}
    		]
    	},
    	"then": {
    		"effect": "audit"
    	}
    }
POLICY_RULE

  parameters = <<PARAMETERS
    {
    	"tagName": {
    		"type": "String",
    		"metadata": {
                "displayName" : "Softcat Tag SoftcatMonitored",
                "description" : "Name of the tag, such as SoftcatMonitored"
    		}
    	}
    }
PARAMETERS

}


