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
    module "tf-fb-auth-uidpwd" {
      source            = "github.com/opentdc/tf-fb-auth-uidpwd"
      project_id        = local.project_id
    }
    ```

4.  Run `terraform init && terraform apply`


## Input variables

| Variable Name               | Type      | Usage       | Default         | Description                                        |
|-----------------------------|-----------|-------------|-----------------|----------------------------------------------------|
| project_id                  | string    | mandatory   |                 | The Firebase project ID                            |
| autodelete_anonymous_users  | boolean   | optional    | false           | Whether to auto-delete anonymous users             |
| allow_duplicate_emails      | boolean   | optional    | false           | Whether to allow duplicate emails                  |
| allow_anonymous_access      | boolean   | optional    | false           | Whether to allow anonymous access                  |
| email_enabled               | boolean   | optional    | true            | Whether to enable email sign-in                    |
| password_required           | boolean   | optional    | true            | Whether to require a password for email sign-in.   |
|                             |           |             |                 | If this is set to false, a link will be sent to    |
|                             |           |             |                 | the email to login.                                |


## Output
None