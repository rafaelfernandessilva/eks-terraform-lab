resource "aws_autoscaling_group" "eks_cluster" {
  desired_capacity   = var.asg_desired
  max_size           = var.asg_max
  min_size           = var.asg_min
  vpc_zone_identifier = [ 
    var.private_subnet_1.id,
    var.private_subnet_2.id
    ]
  launch_template {
    id      = aws_launch_template.cluster.id
    version = "$Latest"
  }
}
