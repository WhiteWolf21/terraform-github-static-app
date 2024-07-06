variable "template_org" {
  description = "The name of the organization in Github that will contain the example app repo."
  default     = "WhiteWolf21"
}

variable "template_repo" {
  description = "The name of the repository in Github that contains the example app code."
  default     = "terraform-input"
}

variable "destination_org" {
  description = "The name of the organization in Github that will contain the templated repo."
  default     = "WhiteWolf21"
}

variable "gh_token" {
  description = "Github token with permissions to create and delete repos."
  default = "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"
}

variable "waypoint_application" {
  type        = string
  description = "Name of the Waypoint application."
  default     = "terraform-output"

  validation {
    condition     = !contains(["-", "_"], var.waypoint_application)
    error_message = "waypoint_application must not contain dashes or underscores."
  }
}
