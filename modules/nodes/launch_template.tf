data "aws_kms_alias" "eks" {
  name = "alias/aws/ebs"
}

resource "aws_launch_template" "cluster" {
  name = var.cluster_name
  image_id = var.ami_version
  
  instance_type = var.nodes_instance_sizes

  key_name = var.key_ssh  

  update_default_version = true
  user_data      = base64encode(templatefile("${path.module}/linux_user_data.tpl", {
                   cluster_name = var.cluster_name
                   

  }))

  ebs_optimized = true
  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
        delete_on_termination = true
        encrypted = true
        volume_type = "gp3"
        volume_size = 20
        iops = 3000
        throughput = 125
        kms_key_id = data.aws_kms_alias.eks.arn
        

    }
  }

  
  tag_specifications {
    resource_type = "instance"
    
    tags = {
      Name = var.cluster_name
    }

    
  }
   
    
}

