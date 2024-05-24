variable "project_id" {
  description = "The Firebase project ID."
  type        = string
}

variable "autodelete_anonymous_users" {
  description = "Whether to auto-delete anonymous users."
  type        = bool
  default     = false
}

variable "allow_duplicate_emails" {
  description = "Whether to allow duplicate emails."
  type        = bool
  default     = false
}

variable "allow_anonymous_access" {
  description = "Whether to allow anonymous access."
  type        = bool
  default     = false
}

variable "email_enabled" {
  description = "Whether to enable email sign-in."
  type        = bool
  default     = true
}

variable "password_required" {
  description = "Whether to require a password for email sign-in. if this is set to false, a link will be sent to the email to login."
  type        = bool
  default     = true
}