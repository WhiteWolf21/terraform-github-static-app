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
