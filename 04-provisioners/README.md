#### Provisioners
Provisioners in essence give users a way to execute custom scripts or commands through Terraform resources.We can choose to run such scripts either locally,that is on the same system where the Terraform commands are running,or remotely on a newly spun up VM through Terraform.

There's two types of provisioners,which cover 2 events of your Terraform resource's lifecycle.A **Create-time** provisioner, and a **Destroy-time** provisioner.

Provisioners expect any custom script or commands to be executed with a return code of 0.Otherwise, it deems the execution failed,and taints the resource


**To initialize the project**

    terraform init


**Plan for deployment**
    
    terraform plan
 *(no mention of the provisioners,even though there's two provisioners against this resource.That's what we need to be focused on,that the provisioners are not tracked,and are independent of the Terraform state file.)* 
 
**To Deploy resources** 

    terraform apply --auto-approve

*(we have successfully gone through applying a null resource with a Creation-time provisioner,and when it created the resource)*


**To Destroy resources** 

    terraform destroy --auto-approve

*(we have successfully gone through destroyning the null resource with a Destroy-time provisioner)*