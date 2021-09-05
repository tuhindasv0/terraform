#### Working with Terraform workspace and state
**To list down all workspace**

    terraform workspace list
    
**To create a new workspace**

    terraform workspace new <workspace_name>

Now as we are in *newly created Workspace(e.g. test)* We can deploy our infrastructure using **deploy** command
    
    terraform deploy --auto-approve
    
*auto-approve flag stops promts*
To track all the resources we can use following command

    terraform state list
As we are in test workspace, we can see all the resource tracked by terraform. and one directory also created **terraform.tfstate.d/test** inside that directory we have **terraform.tfstate** which tracks all the resources in **test** workspace.
*(The statefile for default workspace will be stored in main working dirctory)*

To switch back to default workspace,

    terraform workspace select default
*(To confirm workspace use **terraform workspace list**)*
As we havn't deployed anything in default workspace **terraform state list** will show *no state file found* Once we deploy the resources in default workspace we can see  **terraform.tfstate** created inside root directory. And if we run **terraform state list** we can see similar set of resources being tracked by terraform.
