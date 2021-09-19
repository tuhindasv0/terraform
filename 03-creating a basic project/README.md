#### Building a Basic Terraform Project

Here we are going to create a basic terraform project consist of main teraform file and a stand-alone module. And the main terraform file will call module as per our project requirement.

Create a **modules** folder, Inside this folder create another folder **vpc**. Inside Vpc create 3 separate file as **main.tf, variables.tf and outputs.tf** also in root directory create **main.tf and outputs.tf**

**To initialize the project**

    terraform init
*(here in output we can see a separate module created )*

**To Validate Configuration**

    terraform validate

**Once everything validated we and plan for deployment**
    
    terraform plan
    
**To Deploy resources** 

    terraform apply --auto-approve -var <v_a_r>

*If we don't provide var, template will use default value for deployment*