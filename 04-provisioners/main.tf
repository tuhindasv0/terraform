resource "null_resource" "dummy_resource" {
    #By default provisioners are create-time provisioner
    provisioner "local-exec" {
        command = "echo '0' >status.txt"
      
    }
    provisioner "local-exec" {
        when = destroy
        command = "echo '1' >status.txt"
      
    }
  
  
}