terraform {
  required_version = "~> 1.8"
}

# Enable the Identity Toolkit API.
resource "google_project_service" "auth" {
  provider                      = google-beta
  project                       = var.project_id
  service                       = "identitytoolkit.googleapis.com"

  # Don't disable the service if the resource block is removed by accident.
  disable_on_destroy            = false
}

# Create an Identity Platform config.
# Also, enable Firebase Authentication using Identity Platform (if Authentication isn't yet enabled).
resource "google_identity_platform_config" "auth" {
  provider                      = google-beta
  project                       = var.project_id

  # For example, you can configure to auto-delete anonymous users.
  autodelete_anonymous_users    = var.autodelete_anonymous_users

  # this is not part of the codelab, but a test for uid/pwd auth that I need in bk apps
  sign_in {
    allow_duplicate_emails      = var.allow_duplicate_emails
    anonymous {
      enabled                   = var.allow_anonymous_access
    }
    email {
      enabled                   = var.email_enabled
      password_required         = var.password_required
    }
  }

  # Wait for identitytoolkit.googleapis.com to be enabled before initializing Authentication.
  depends_on = [
    google_project_service.auth,
  ]
}

