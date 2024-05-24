# Terraform module for UID/PWD authentication on Firebase 

This is a Terraform module to install Firebase Authentication with user-id and password. 
It requires the [Google Cloud SDK][] to be installed locally and an
existing [Firebase project][Firebase console]. 

To get started:

1.  Install the [Google Cloud SDK][], [Terraform][Terraform install], and
    [Git][Git install].

2.  Create a [Firebase project][Firebase console] with the Blaze Plan.

3.  Add the following config to your terraform tf file:

    ```
    module "fb-auth" {
      source            = "github.com/opentdc/tf-fb-auth-uidpwd"
      project_id        = [YOUR_GOOGLE_FIREBASE_PROJECT_ID]
    }
    ```

4.  Run `terraform init && terraform apply`
