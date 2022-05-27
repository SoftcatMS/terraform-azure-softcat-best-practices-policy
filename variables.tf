variable "location" {
  type        = string
  description = "The Azure Region where the policies  should exist."
}

variable "softcat_tag_keys" {
  type        = list(any)
  description = "List of Softcat tag keys used by policies 'AuditSoftcatTags'"
  default = [
    "softcat_managed_type",
    "softcat_environment",
    "softcat_build_type"
  ]
}

