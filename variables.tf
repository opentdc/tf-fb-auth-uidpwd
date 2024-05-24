# Copyright [2024] [Bruno Kaiser]

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0
# SPDX-License-Identifier: Apache-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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